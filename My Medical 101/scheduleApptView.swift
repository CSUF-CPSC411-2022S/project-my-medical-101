//
//  ContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//
import SwiftUI
import AssetsLibrary

struct ScheduleView: View {
    @State var name: String = ""
    @State var buttonClicked = false
    @State var makeAppt = false
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                VStack {
                    VStack {
                        Text("Schedule Your Appointment").multilineTextAlignment(.center).modifier(SchedulePageTitle())
                    }.padding([.leading])
                    
                    VStack (alignment: .leading) {
                        Text("March 8:").foregroundColor(Color.black).padding([.leading])
                        HStack{
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color("pastelPurple")))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle()).padding([.leading])
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("March 9:").foregroundColor(Color.black).padding([.leading])
                        HStack{
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle()).padding([.leading])
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("March 10:").foregroundColor(Color.black).padding([.leading])
                        HStack{
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle()).padding([.leading])
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("March 11:").foregroundColor(Color.black).padding([.leading])
                        HStack{
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle()).padding([.leading])
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("March 12:").foregroundColor(Color.black).padding([.leading])
                        HStack{
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle()).padding([.leading])
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 6:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:00 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {buttonClicked=true}) {
                                Text(" 7:30 ").font(.system(size: geometry.size.width/25))
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                                    .frame(minWidth: geometry.size.width/5)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                    
                    if buttonClicked {
                        Text("You've selected a time for your appointment.\nPlease click the \"Make Appointment\" button below to schedule your appointment!")
                            .foregroundColor(Color.black).padding(.horizontal)
                    }
                    Button(action: {makeAppt=true}) {
                        Text(" Make Appointment ").font(.system(size: geometry.size.width/25))
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.yellow))
                            .frame(minWidth: geometry.size.width/4)
                    }.padding(.top).buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: HelpPage()) {
                        Text("\nClick here to learn about how the app works!").bold()
                    }
                    if makeAppt {
                        if buttonClicked{
                            Text("You've made your appointment!")
                                .foregroundColor(Color.black).padding(.horizontal)
                        }
                        else{
                            Text("Please choose a time for your appointment.").foregroundColor(Color.black).padding(.horizontal)
                        }
                    }
                }
            }.modifier(PageBackground())
        }
    }
}

struct SchedulePageTitle: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Marker Felt", size: 30))
           .foregroundColor(Color.black)
           .padding()
           .background(Color("pastelBlue"))
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
