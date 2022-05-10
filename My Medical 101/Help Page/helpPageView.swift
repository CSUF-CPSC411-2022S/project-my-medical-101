//
//  HelppageView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/15/22.
//

import SwiftUI



//HELP PAGE
struct HelpPage : View{
    var body: some View{
        ScrollView {
            VStack {
                Text("Instructions on how to use the app:\n").modifier(HelpText())
                Spacer()
                Text("1. First, if you have not already, please create an account.\n2. If you already have an account, login with your username and password.\n3. After logging in and getting to the homepage, you can either Schedule an appointment or view your medical chart.\n")
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                Spacer()
                Text("Scheduling an appointment:\n1. First, pick a date that works best for you. Then, choose a time between 9 am to 5 pm. \n2. Choose your reason for visit from the options given or enter your own. \n3. Click on Schedule Appointment and then click Done in the pop up.")
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                Spacer()
                Text("View your Medical Chart:\n1. After Navigating to this page, you will see all your medical details listed here.\n2. Click on \"Medications\" to view any medications that your doctor may have prescribed to you.").multilineTextAlignment(.leading)
                    .padding(.leading)
                Spacer()
            }
        }
        Text("Settings")
        Spacer()
        Text("Font Size")
        Spacer()
        Text("Log Out")
        Spacer()
    }
}
