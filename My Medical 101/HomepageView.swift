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
        GeometryReader { geometry in
            VStack {
                Section (header: Text("My Medical 101")
                            .font(.custom("Times New Roman", size:50))
                            .foregroundColor(Color.black)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 50, trailing: 20))
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(Color("pastelBlue"))
                ) {

                }
                VStack {
                    VStack {
                        Image("headerIcon")
                            .resizable()
                            .frame(width: .infinity, height: 200)
                            .padding(EdgeInsets(top:50, leading: 20, bottom: 0, trailing: 20))
                        HStack {
                            Spacer()
                            Text("Welcome \(patient.myName)!")
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
                        }.padding(EdgeInsets(top:20, leading: 10, bottom: 0, trailing: 20))
                        Spacer()
                        HStack {
                            Button(action: {
                              print("Viewing Upcoming Appointments")
                            }) {
                              Text("Upcoming Appointments")
                                    .frame(width:315, height: 50)
                                    .font(.custom("Times New Roman", size: 22))
                                    .foregroundColor(Color.black)
                                    .padding(EdgeInsets(top:20, leading: 20, bottom: 20, trailing: 20))
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
                    }.frame(height: geometry.size.height / 1.8)
                    Spacer()
                }
            }
        }
    }
}

struct TitleText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Times New Roman", size: 40))
           .foregroundColor(Color.black)
           .padding(EdgeInsets(top:0, leading: 20, bottom: 50, trailing: 20))
           .frame(maxWidth: .infinity, maxHeight: 80)
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

struct Previews_HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHomepage()
    }
}
