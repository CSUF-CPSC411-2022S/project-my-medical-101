//
//  HomepageView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/15/22.
//

import SwiftUI

// HOMEPAGE CODE

struct ContentViewHomepage: View {
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
                            .padding(EdgeInsets(top:20, leading: 20, bottom: 0, trailing: 20))
                        HStack {
                            Spacer()
                            Text("Welcome! (Patient Name)")
                                .font(.custom("Times New Roman", size: 25))
                                .bold()
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            NavigationLink(destination: ChartView()) {
                                Text("My Chart")
                                    .modifier(ButtonText())
                                    .padding(.leading, 130)
                                Spacer()
                            }.navigationBarBackButtonHidden(true)
                        }.padding(.top)
                        
                        HStack {
                            Button(action: {
                              print("Scheduling Appointments")
                            }) {
                              Text("Schedule Appointments")
                                .modifier(ButtonText())
                            }
                        }
                        HStack {
                            Button(action: {
                              print("Viewing Upcoming Appointments")
                            }) {
                              Text("Upcoming Appointments")
                                .modifier(ButtonText())
                            }
                        }
                        Spacer()
                        NavigationLink(destination: HelpPage()) {
                            Text("Help Page")
                                .font(.custom("Times New Roman", size: 30))
                                .frame(width: 400, height: 10, alignment: .topTrailing)
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

struct ButtonText: ViewModifier {
    func body(content: Content) -> some View {
        content
           .font(.custom("Times New Roman", size: 22))
           .foregroundColor(Color.black)
           .padding()
           .background(Color("pastelBlue"))
           .cornerRadius(10)
   }
}

struct Previews_HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHomepage()
    }
}