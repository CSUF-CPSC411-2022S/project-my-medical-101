//
//  docHomePage.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation

struct myDocHomePage {
    // code here
}

class Doctor: ObservableObject {
    @Published var patients: [Patient] = []
    @Published var name: String
    
    var patientsList: String {
        var list: String = ""
        if !patients.isEmpty {
            for patient in patients {
                list += patient.firstName + " " + patient.lastName
            }
        } else {
            list = "No Patients"
        }
        
        return list
    }
        
    init() {
        self.name = "Dr. P"
    }
}
