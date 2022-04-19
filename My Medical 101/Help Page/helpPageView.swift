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
        Text("Instructions on how to use the app:\n").modifier(HelpText())
        Spacer()
        Text("1. First, if you have not already, please create an account.\n2. If you already have an account, login with your username and password.\n3. After logging in and getting to the homepage, you can either Schedule an appointment or view your medical chart.\n")
            .multilineTextAlignment(.leading)
            .padding(.leading)
        Spacer()
        Text("Scheduling an appointment:\n1. After navigating to the \"Schedule Appointments\" section, you will see the dates on which the doctor is available to meet with you.\n2.Below each date will be the times they are available at. \n3.Please make sure to select one of the times and then click on \"Make Appointment\"\n")
            .multilineTextAlignment(.leading)
            .padding(.leading)
        Spacer()
        Text("View your Medical Chart:\n1. After Navigating to this page, you will see all your medical details listed here.\n2. Click on \"Medications\" to view any medications that your doctor may have prescribed to you.").multilineTextAlignment(.leading)
            .padding(.leading)
        Spacer()
    }
}
