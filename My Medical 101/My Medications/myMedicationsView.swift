//
//  myMedications.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/10/22.
//

import Foundation
import SwiftUI

struct MedicationsView: View {
    @EnvironmentObject var patient: Patient
    @EnvironmentObject var medication: Medication
    var body: some View {
        VStack {
            VStack {
                Text("My Medications")
                    .font(.custom("Marker Felt", size:50))
                    .foregroundColor(Color.black)
                    .padding(EdgeInsets(top: 100, leading: 20, bottom: 50, trailing: 20))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("pastelBlue"))
            }
            VStack {
                Text("List of Medications")
                Spacer()
                VStack {
                    if !patient.meds.isEmpty {
                        ForEach(patient.meds) {
                            med in
                            VStack {
                                HStack {
                                    Text("\(med.name) (\(med.dosage))")
                                }
                                Text("\(med.freq)")
                            }
                        }
                    } else {
                        Text("No medications prescribed at the moment.\nCome back later.")
                        Spacer()
                    }
                }
            }
        }
    }
}
