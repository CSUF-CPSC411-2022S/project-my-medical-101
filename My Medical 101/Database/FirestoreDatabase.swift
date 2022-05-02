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

class FirestoreDatabase: ObservableObject {
    private let firebaseDb = Firestore.firestore()
//    static let shared : FirestoreDatabase = FirestoreDatabase()
//    private let patientsCollection = "patients"
    
    @Published var patient = Patient()


    init(){
        self.patient = Patient()
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
  
    //work in progress: trying to pull data using email
    func validateLogin(email:String, password:String) {
        let docRef = firebaseDb.document("patientCollection/Jane@gmail.com")
        //let docRef = firebaseDb.document("patientCollection/\(email)")
        docRef.getDocument{ snapshot, error in
            guard let data = snapshot?.data(), error == nil else{
                return
            }
            guard let strPassword = data["Password"] as? String else{
                return
            }
            if (password == strPassword){
                print("login successful")
            }

            //print("firstName in get function: \(firstName)")
        }
    }
}


//    func update(usingPatientsItem patientItem: PatientItem) {
//
//        firebaseDb
//            .collection(patientsCollection)
//            .whereField("email", isEqualTo: patientItem.email)
//            .getDocuments{(snapshot, error) in
//                if let error = error {
//                    print("Document error: \(error)")
//                } else{
//                    if let document = snapshot?.documents.first{
//                        do {
//                            try document.reference.setData(from: patientItem)
//                        } catch let error {
//                            print("Document error: \(error)")
//                        }
//                    }
//                }
//            }
//    }
//
//    func delete(usingId email: String) {
//        firebaseDb
//            .collection(patientsCollection)
//            .whereField("email", isEqualTo: email)
//            .getDocuments{(snapshot, error) in
//                if let error = error {
//                    print("Document error: \(error)")
//                } else{
//                    if let document = snapshot?.documents.first{
//                        document.reference.delete {(error) in
//                            print("Delete failed: \(String(describing: error))")
//                        }
//                    }
//                }
//            }
//    }
    
