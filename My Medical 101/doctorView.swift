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
                if appointment.submitButton == true{
                    Text("\(appointment.typedReasonForVisit)")
                }
            }
        }
    }
}
