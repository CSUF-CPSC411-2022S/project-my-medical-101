//
//  patient.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/31/22.
//

import SwiftUI

struct patientView: View {
    @EnvironmentObject var patient: Patient
    
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Medications")
                    .font(.headline)
                    .padding(.bottom, 30)
                VStack {
                    if !patient.meds.isEmpty {
                        ForEach(patient.meds) {
                            med in
                            HStack {
                                Text("\(med.name) (\(med.dosage))\n\(med.freq)")
                                Spacer()
                            }
                            .padding(.bottom, 30)
                            .padding(.leading, 100)
                        }
                    }
                }
            }
        }
        // end of nav view
    }
}
