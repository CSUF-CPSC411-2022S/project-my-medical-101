//
//  My_Medical_101App.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//

import SwiftUI
import Firebase

@main
struct My_Medical_101App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject var patient = Patient()
    @StateObject var doctor = Doctor()
    @StateObject var scheduleAppt = ScheduleAppt()
    @StateObject var medication = Medication()
    @StateObject var firestoreDB = FirestoreDatabase()
    var body: some Scene {
        WindowGroup {
            ContentViewLogin()
                .environmentObject(patient)
                .environmentObject(doctor)
                .environmentObject(scheduleAppt)
                .environmentObject(medication)
                .environmentObject(firestoreDB)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Finished Launching")
        FirebaseApp.configure()
        return true
    }
}

