//
//  Patients.swift
//  My Medical 101
//
//  Created by csuftitan on 4/30/22.
//
import Foundation
// not using this
struct PatientItem: Codable {
    let firstName: String
    let lastName: String
    let dob: String
    let gender: String
    let height: String
    let weight: String
    let email: String
    let password: String
    let phoneNumber: String
    let apptDate: String
    let apptTime: String
    let reasonForVisit: String
    
    enum CodingKeys: String, CodingKey {
        case firstName
        case lastName
        case dob
        case gender
        case height
        case weight
        case email
        case password
        case phoneNumber
        case apptDate
        case apptTime
        case reasonForVisit
    }
    
    init(email: String,
         password: String,
         firstName: String,
         lastName: String,
         dob: String,
         gender: String,
         height: String,
         weight: String,
         phoneNumber: String,
         apptDate: String,
         apptTime: String,
         reasonForVisit: String){
        
        self.email = email
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.dob = dob
        self.gender = gender
        self.height = height
        self.weight = weight
        self.phoneNumber = phoneNumber
        self.apptDate = apptDate
        self.apptTime = apptTime
        self.reasonForVisit = reasonForVisit
    }
}

