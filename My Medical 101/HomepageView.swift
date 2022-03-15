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
            NavigationView {
                    
                ZStack {

                    GeometryReader { geometry in
                        VStack {
                            
                            Text("My Medical 101").modifier(TitleText())
                            Spacer()
                            
                            NavigationLink(destination: ContentViewHelpPage()) {
                                Text("❓")
                                    .font(.custom("Courier New", size: 30))
                                    .frame(width: 400, height: 10, alignment: .topTrailing)
                            }
                            
                            VStack {
                                Image("projectIcon")
                                    .resizable()
                                    .frame(width: 300.0, height: 200.0)

                                Spacer()
                                
                                HStack {
                                    Spacer()
                                    Text("Welcome! (Patient Name)")
                                        .font(.custom("Courier New", size: 25))
                                        .bold()
                                    Spacer()
                                }
                                
                                HStack{
                                    //NAVIGATION LINK
                                  //  NavigationLink(destination: //VolunteerForm()) {

                                    Spacer()
                                    Button(action: {
                                      print("Viewed My Chart")
                                    }) {
                                      Text("My Chart")
                                        .modifier(ButtonText())
                                    }
                                    Spacer()
                                }.padding(.top)
                                
                                HStack{
                                    Button(action: {
                                      print("Scheduling Appointments")
                                    }) {
                                      Text("Schedule Appointments")
                                        .modifier(ButtonText())
                                    }
                                }
                                HStack{
                                    Button(action: {
                                      print("Viewing Upcoming Appointments")
                                    }) {
                                      Text("Upcoming Appointments")
                                        .modifier(ButtonText())
                                    }
                                }
                                Spacer()
                                
                            }.frame(height: geometry.size.height / 1.8)
                            
                            Spacer()
                        }
                    }
                }
            }
        }
    }


    struct TitleText: ViewModifier {
       func body(content: Content) -> some View {
            content
               .font(.custom("Marker Felt", size: 40))
               .foregroundColor(Color.black)
               .padding(EdgeInsets(top:0, leading: 20, bottom: 50, trailing: 20))
               .frame(maxWidth: .infinity, maxHeight: 80)
               .background(Color("pastelBlue"))
       }
    }

    struct ButtonText: ViewModifier {
    func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 22))
           .foregroundColor(Color.black)
           .padding()
           .background(Color("pastelBlue"))
           .cornerRadius(10)
   }
}






