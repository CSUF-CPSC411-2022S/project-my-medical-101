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
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    VStack {
                        Text("My Medical 101").modifier(TitleText())
                    }.frame(height: 20)
                    Spacer()
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
                        HStack {
                            NavigationLink(destination: ChartView()) {
                                Text("My Chart")
                                    .modifier(HPButtonText())
                                Spacer()
                            }
                        }.padding(EdgeInsets(top:20, leading: 30, bottom: 20, trailing: 10))
                        
                        NavigationLink(destination: ScheduleView()) {
                            Text("Schedule Appointment")
                                .modifier(HPButtonText())
                            Spacer()
                        }
                    }.padding(EdgeInsets(top:20, leading: 10, bottom: 10, trailing: 20))
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
                    NavigationLink(destination: HelpPage()) {
                        Text("Help Page")
                            .font(.custom("Times New Roman", size: 20))
                            .frame(width: 100, height: 10, alignment: .topTrailing)
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct TitleText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Times New Roman", size:55))
           .foregroundColor(Color.black)
           .padding(EdgeInsets(top: -30, leading: 20, bottom: 70, trailing: 20))
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color("pastelBlue"))
   }
}

struct HPButtonText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width:125, height: 50)
            .font(.custom("Times New Roman", size: 22))
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top:20, leading: 20, bottom: 20, trailing: 20))
            .background(Color("pastelBlue"))
            .cornerRadius(10)
            .multilineTextAlignment(.center)
   }
}


