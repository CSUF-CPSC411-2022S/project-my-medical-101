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
    @EnvironmentObject var patientInformation: myDocHomePage
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack{
                    Text("Patients").bold()
                        .modifier(patientsTitle()).padding(.bottom)
                    VStack{
                        Text("Patient Name: Patient 1 ")
                        Text("DOB")
                        // TODO: need to store date and time separately 
                        Text("\(appointment.date) ")
                        Text("\(appointment.time)")
                        HStack{
                            Text("Reason for Visit: ")
                            // work on using variables from the class
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
            .font(.custom("Times New Roman", size: 12))
            .frame(width: 360)
            .background(Color("pastelPurple"))
            .cornerRadius(25)
    }
}
