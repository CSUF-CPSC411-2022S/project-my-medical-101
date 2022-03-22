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
    @StateObject var scheduleAppt = ScheduleAppt()
    var body: some Scene {
        WindowGroup {
            ContentViewLogin().environmentObject(patient)
            ScheduleView().environmentObject(scheduleAppt)
        }
    }
}

