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
                    Text("Instructions on how to use the app")
                        .font(.custom("Marker Felt", size: 30))
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color("pastelBlue"))
                        .cornerRadius(10)
                        .frame(alignment: .center)
                }.padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 20))
                VStack {
                    Text("1. First, if you have not already, please create an account.\n2. If you already have an account, login with your username and password.\n3. After logging in and getting to the homepage, you can either Schedule an appointment or view your medical chart.\n")
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    Spacer()
                }
                VStack {
                    Text("Scheduling an appointment:\n1. After navigating to the \"Schedule Appointments\" section, you will see the dates on which the doctor is available to meet with you.\n2.Below each date will be the times they are available at. \n3.Please make sure to select one of the times and then click on \"Make Appointment\"\n")
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    Spacer()
                }
                VStack {
                    Text("View your Medical Chart:\n1. After Navigating to this page, you will see all your medical details listed here.\n2. Click on \"Medications\" to view any medications that your doctor may have prescribed to you.").multilineTextAlignment(.leading)
                        .padding(.leading)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HelpPage()
    }
}
