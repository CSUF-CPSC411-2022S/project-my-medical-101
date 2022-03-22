//
//  doctorView.swift
//  My Medical 101
//
//  Created by csuftitan on 3/21/22.
//

import Foundation
import SwiftUI
import AssetsLibrary

// TODO: View
struct DocView : View {
    @EnvironmentObject var appointment: ScheduleAppt
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Text("Patients").bold()
                    .modifier(patientsTitle()).padding(.bottom)
                VStack{
                    Text("Patient Name: Patient 1 ")
                    Text("DOB")
                    HStack{
                        Text("Reason for Visit: ")
                        if appointment.submitButton == true {
                            if appointment.generalCheckup == true{
                                Text("General Checkup")
                            }
                            else if appointment.followUp == true{
                                Text("Follow up")
                            }
                            else if appointment.refill == true{
                                Text("Refill")
                            }
                            else if appointment.injury == true{
                                Text("Injury")
                            }
                            else if appointment.typedReasonForVisit != ""{
                                Text("\(appointment.typedReasonForVisit)")
                            }
                            else{
                                Text("Purpose of visit not listed")
                            }
                        }
                    }
                    
                }.modifier(field())
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
