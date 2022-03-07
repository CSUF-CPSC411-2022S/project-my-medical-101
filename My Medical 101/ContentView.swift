//
//  ContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var buttonClicked = false
    @State var makeAppt = false
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                VStack (alignment: .leading){
                    Text("Schedule Your Appointment").modifier(SchedulePageTitle())
                }.padding([.top, .leading])
                VStack(alignment: .leading) {
                    Text("March 7:")
                    HStack{
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                
                VStack (alignment: .leading) {
                    Text("March 8:")
                    HStack{
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                
                VStack (alignment: .leading) {
                    Text("March 9:")
                    HStack{
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                
                VStack (alignment: .leading) {
                    Text("March 10:")
                    HStack{
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                
                VStack (alignment: .leading) {
                    Text("March 11:")
                    HStack{
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 6:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:00 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {buttonClicked=true}) {
                            Text(" 7:30 ").font(.system(size: geometry.size.width/30))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                .frame(minWidth: geometry.size.width/5)
                        }.buttonStyle(PlainButtonStyle())
                    }
                    .padding(.bottom)
                }
                
                if buttonClicked {
                    Text("You've selected a time for your appointment.\nPlease click the \"Make Appointment\" button below to schedule your appointment!")
                        .foregroundColor(Color.white).padding(.horizontal)
                }
                Button(action: {makeAppt=true}) {
                    Text(" Make Appointment ").font(.system(size: geometry.size.width/25))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                        .frame(minWidth: geometry.size.width/4)
                }.padding(.top).buttonStyle(PlainButtonStyle())
                
                if makeAppt {
                    if buttonClicked{
                        Text("You've made your appointment!")
                            .foregroundColor(Color.white).padding(.horizontal)
                    }
                    else{
                        Text("Please choose a time for your appointment.").foregroundColor(Color.white).padding(.horizontal)
                    }
                }
            }
        }.modifier(PageBackground())
    }
}
struct SchedulePageTitle: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 25))
           .foregroundColor(Color.white)
           .padding()
           .background(Color.teal)
           .cornerRadius(10)
           .frame(alignment: .center)
    }
}

struct PageBackground: ViewModifier {
   func body(content: Content) -> some View {
        content
           .background(Color.primary)
    }
}
