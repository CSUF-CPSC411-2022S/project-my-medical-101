//
//  myMedications.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation

class Medication: ObservableObject, Identifiable {
    @Published var name: String
    @Published var dosage: String
    @Published var freq: String
    
    init() {
        self.name = ""
        self.dosage = ""
        self.freq = ""
    }
}
