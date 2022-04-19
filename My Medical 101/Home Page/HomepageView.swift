//
//  HomepageView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/15/22.
//

import SwiftUI

// HOMEPAGE CODE

struct ContentViewHomepage: View {
    @EnvironmentObject var patient: Patient
    var body: some View {
        VStack {
            Text("My Medical 101").modifier(TitleText())
            Spacer()
            Image("headerIcon")
                .resizable()
                .frame(width: .infinity, height: 200)
                .padding(EdgeInsets(top: -60, leading: 20, bottom: 0, trailing: 20))
            HStack {
                Spacer()
                Text("Welcome \(patient.firstName)!")
                    .font(.custom("Times New Roman", size: 25))
                    .bold()
                Spacer()
            }
            
            HStack {
                Button(action: {
                  print("Viewing Upcoming Appointments")
                }) {
                  Text("Upcoming Appointments")
                        .frame(width:315, height: 50)
                        .font(.custom("Times New Roman", size: 22))
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top:20, leading: 20, bottom: 10, trailing: 20))
                        .background(Color("pastelBlue"))
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                }
            }.padding(EdgeInsets(top: 0, leading: 30, bottom: 20, trailing: 20))
            Spacer()
        }

    }
}
