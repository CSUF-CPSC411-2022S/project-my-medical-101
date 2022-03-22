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
                Text("Patient 1: ")
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
        }
    }
}
