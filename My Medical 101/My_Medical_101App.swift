//
//  My_Medical_101App.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//

import SwiftUI

@main
struct My_Medical_101App: App {
    @StateObject var patient = Patient()
    @StateObject var doctor = Doctor()
    @StateObject var scheduleAppt = ScheduleAppt()
    @StateObject var medication = Medication()
    var body: some Scene {
        WindowGroup {
            FrontHomepageView()
                .environmentObject(patient)
                .environmentObject(doctor)
                .environmentObject(scheduleAppt)
                .environmentObject(medication)
        }
    }
}

