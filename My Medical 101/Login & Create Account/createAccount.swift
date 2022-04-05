//
//  createAccount.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation

class Patient: ObservableObject {
    @Published var firstName: String
    @Published var lastName: String
    @Published var dob: String
    @Published var gender: String
    @Published var height: String
    @Published var weight: String
    @Published var meds: [Medication]
    
    var medsList: String {
        var list: String = ""
        if !meds.isEmpty {
            for med in meds {
                list += med.name + " " + med.dosage
            }
        } else {
            list = "No Medications"
        }
        
        return list
    }

    init() {
        self.firstName = ""
        self.lastName = ""
        self.dob = ""
        self.gender = ""
        self.height = ""
        self.weight = ""
        self.meds = []
    }
    
}
