//
//  doctorView.swift
//  My Medical 101
//
//  Created by csuftitan on 3/21/22.
//

import Foundation
import SwiftUI
import AssetsLibrary

// TODO: every patient should be stored in an array and should be displayed
struct DocView : View {
    @EnvironmentObject var appointment: ScheduleAppt
    @EnvironmentObject var patient: Patient
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack{
                    Text("Patients").bold()
                        .modifier(patientsTitle()).padding(.bottom)
                    VStack{
                        HStack{
                            Text("Patient Name: ")
                            Text("\(patient.myName)")
                        }
                        Text("Date: \(appointment.strDate) ")
                        Text("Time (24 hour time): \(appointment.strTime)")
                        HStack{
                            Text("Reason for Visit: ")
                            Text("\(appointment.purposeOfVisit)")
                        }
                        
                    }.modifier(field())
                }
            }
        }
        
    }
}

struct patientsTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size:30))
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity, maxHeight: 100)
            .background(Color("pastelBlue"))
    }
}

struct field: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 16))
            .frame(width: 360)
            .background(Color("pastelPurple"))
            .cornerRadius(25)
    }
}
