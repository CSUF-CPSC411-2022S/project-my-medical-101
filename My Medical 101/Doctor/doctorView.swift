//
//  doctorView.swift
//  My Medical 101
//
//  Created by csuftitan on 3/21/22.
//

import Foundation
import SwiftUI
import AssetsLibrary

// TODO: Continue working on View
struct DocView : View {
    @EnvironmentObject var appointment: ScheduleAppt
    @EnvironmentObject var patient: Patient
    var body: some View {
        ScrollView {
            VStack{
                Text("Patients").bold()
                    .modifier(Headers()).padding(.bottom)
                VStack{
                    HStack{
                        Text("Patient Name: ")
                        Text("\(patient.firstName) \(patient.lastName)")
                    }
                    Text("Date: \(appointment.strDate) ")
                    Text("Time (24 hour time): \(appointment.strTime)")
                    HStack{
                        Text("Reason for Visit: ")
                        Text("\(appointment.purposeOfVisit)")
                    }
                    
                }.modifier(field())
            }
        }.edgesIgnoringSafeArea(.top)
    }
}
