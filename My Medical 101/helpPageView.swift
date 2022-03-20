//
//  HelpPage.swift
//  My Medical 101
//
//  Created by csuftitan on 3/10/22.
//

import Foundation
import SwiftUI

struct HelpPage : View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    Text("Help Page").bold()
                        .modifier(helpTitle()).padding(.bottom)
                }
                VStack {
                    Text("1. First, if you have not already, please create an account.\n2. If you already have an account, login with your username and password.\n3. After logging in and getting to the homepage, you can either Schedule an appointment or view your medical chart.\n")
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    Spacer()
                }.modifier(instructions())
                VStack {
                    Text("Scheduling an appointment:\n1. After navigating to the \"Schedule Appointments\" section, you will see the dates on which the doctor is available to meet with you.\n2.Below each date will be the times they are available at. \n3.Please make sure to select one of the times and then click on \"Make Appointment\"\n")
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    Spacer()
                }.modifier(instructions())
                VStack {
                    Text("View your Medical Chart:\n1. After Navigating to this page, you will see all your medical details listed here.\n2. Click on \"Medications\" to view any medications that your doctor may have prescribed to you.").multilineTextAlignment(.leading)
                        .padding(.leading)
                    Spacer()
                }.modifier(instructions())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HelpPage()
    }
}

struct helpTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size:30))
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("pastelBlue"))
    }
}

struct instructions: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 12))
            .frame(width: 360, height: 180)
            .background(Color("lightPastelBlue"))
            .cornerRadius(25)
    }
}
