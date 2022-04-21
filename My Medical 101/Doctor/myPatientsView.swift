//
//  myPatientsView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 4/21/22.
//

import Foundation
import SwiftUI
import AssetsLibrary

struct myPatientsView: View {
    @EnvironmentObject var patient: Patient
    @EnvironmentObject var doctor: Doctor
    var body: some View {
        ScrollView {
            VStack {
                Text("Patients").modifier(Headers())
                VStack {
                    if !doctor.patients.isEmpty {
                        ForEach(doctor.patients) {
                            patient in
                            VStack {
                                Text("\(patient.firstName) \(patient.lastName)")
                                Text("Age: \(patient.gender)")
                            }
                        }
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}
