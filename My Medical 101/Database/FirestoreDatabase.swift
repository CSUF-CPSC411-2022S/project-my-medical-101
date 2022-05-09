//
//  FirestoreDatabase.swift
//  My Medical 101
//
//  Created by csuftitan on 4/30/22.
//

import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import simd
import Foundation
import FirebaseMLModelDownloader

class FirestoreDatabase: ObservableObject {
    private let firebaseDb = Firestore.firestore()
    
    @Published var validLogin: Bool
    @Published var logInFirstName: String
    @Published var logInLastName: String
    @Published var logInDOB: String
    @Published var logInGender: String
    @Published var logInHeight: String
    @Published var logInWeight: String
    @Published var logInDate: String
    @Published var logInTime: String
    @Published var logInPurposeOfVisit: String
    
    init(){
        self.validLogin = false
        self.logInFirstName = ""
        self.logInLastName = ""
        self.logInDOB = ""
        self.logInGender = ""
        self.logInHeight = ""
        self.logInWeight = ""
        self.logInDate = ""
        self.logInTime = ""
        self.logInPurposeOfVisit = ""
    }
    
    func add(p: Patient) -> Bool {
        let docRef = firebaseDb.document("patientCollection/\(p.email)")
        print("email: " + p.email)
        docRef.setData([
            "email":p.email,
            "password":p.password,
            "firstName":p.firstName,
            "lastName":p.lastName,
            "dob":p.dob,
            "gender":p.gender,
            "height":p.height,
            "weight":p.weight,
            "phoneNumber":p.phoneNumber,
            "apptTime":p.strTime,
            "apptDate":p.strDate,
            "purposeOfVisit":p.purposeOfVisit
        ])
        print("in add")
        return true
    }
    
    func getData(user:String, password:String) -> (Bool) {
        
        let group = DispatchGroup()
        group.enter()
        
        let docRef = firebaseDb.document("patientCollection/\(user)")

        docRef.getDocument {[weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil
            else {
                return
            }

            guard let text = data["password"] as? String
            else{
                return
            }
            
            DispatchQueue.main.async {
                print("printing text from getData: " + text)
                if (password == text) {
                    print("Password matches. Login Successful.")
                    
                    self?.logInFirstName = data["firstName"] as! String
                    self?.logInLastName = data["lastName"] as! String
                    self?.logInDOB = data["dob"] as! String
                    self?.logInWeight =  data["weight"] as! String
                    self?.logInHeight =  data["height"] as! String
                    self?.logInGender =  data["gender"] as! String
                    self?.logInDate =  data["apptDate"] as! String
                    self?.logInTime =  data["apptTime"] as! String
                    self?.logInPurposeOfVisit =  data["purposeOfVisit"] as! String
                    self?.validLogin = true
                }
                else{
                    print("Login not successful")
                    self?.validLogin = false
                }
                group.leave()
            }
    }
    return self.validLogin
}
}
