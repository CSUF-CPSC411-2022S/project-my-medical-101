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

struct HelpPage : View{
    var body: some View{
        Text("Instructions on how to use the app:\n").modifier(SchedulePageTitle())
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
struct SchedulePageTitle: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Marker Felt", size: 30))
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
