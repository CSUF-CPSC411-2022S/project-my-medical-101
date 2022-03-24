//
//  createAccount.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation

class Patient: ObservableObject {
    @Published var myName: String
    @Published var dob: String
    @Published var gender: String
    @Published var height: String
    @Published var weight: String

    init() {
        self.myName = ""
        self.dob = ""
        self.gender = ""
        self.height = ""
        self.weight = ""
    }
}
