//
//  FrontHomepageView.swift
//  My Medical 101
//
//  Created by csuftitan on 5/9/22.
//

import Foundation
//
//  FrontHomepageView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 5/4/22.
//
import SwiftUI

struct FrontHomepageView: View {
    @EnvironmentObject var patient: Patient
    @State var email: String = ""
    @State var password: String = ""
    @State var phoneNumber: String = ""
    @State private var selected = 1
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("MedicalAppLogo2")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))

                    Text("Get started below!")
                        .font(.custom("Courier New", size: 32))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))

                 //   Text("My Medical 101 is an easy to use app for booking your doctor appointments")
                        

                    Text("Create an account if you are a new patient")
                        .bold()
                        .padding(.bottom)
                        .font(.custom("arial", size: 18))

                    Button(action: {

                    }) {
                        NavigationLink(destination: ContentViewNewAccount()) {
                            Text("Create my Account")
                                .modifier(CreateButtonText())
                           }.navigationBarBackButtonHidden(true)
                       }.padding(.bottom)

                    Text("Login if you already have an account")
                        .bold()
                        .padding(.top)
                        .font(.custom("arial", size: 20))

                    Button(action: {

                    }) {
                        NavigationLink(destination: ContentViewLogin()) {
                            Text("Login")
                                .modifier(CreateButtonText())
                           }.navigationBarBackButtonHidden(true)
                       }.padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))

                    Text("⌄")
                        .font(.custom("Times New Roman", size: 100))
                        .foregroundColor(Color("pastelPurple"))


                    Group {
                        VStack {
                            Spacer()
                            Text("Meet the Doctors")
                                .bold()
                                .modifier(HomeTopText())
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0))

                            HStack{
                            Image("personIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                    .stroke(lineWidth: 4)
                                    .foregroundColor(Color("pastelPurple")))
                                .shadow(radius: 5)
                                .padding(.leading, 20)

                            Text("Dr. Anjali Patel  ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("SnellRoundhand", size: 25))
                                Spacer()
                            }
                            Text("Post Anesthesia Care Unit Department")
                                .font(.custom("arial", size: 18))
                                .padding(EdgeInsets(top: 10, leading: 8, bottom: 50, trailing: 5))

                            HStack{
                            Image("personIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                    .stroke(lineWidth: 4)
                                    .foregroundColor(Color("pastelPurple")))
                                .shadow(radius: 5)
                                .padding(.leading, 20)

                            Text("Dr. Vibha Rajagopalan  ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("SnellRoundhand", size: 20))
                                Spacer()
                            }
                            Text("Department of Pediatrics - Attending Physician")
                                .font(.custom("arial", size: 18))
                                .padding(EdgeInsets(top: 10, leading: 8, bottom: 50, trailing: 5))

                            HStack{
                            Image("personIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                    .stroke(lineWidth: 4)
                                    .foregroundColor(Color("pastelPurple")))
                                .shadow(radius: 5)
                                .padding(.leading, 20)

                            Text("Dr. Brenda Gomez  ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("SnellRoundhand", size: 25))
                                Spacer()
                            }
                            Text("Department of Pediatrics - Attending Physician")
                                .font(.custom("arial", size: 18))
                                .padding(EdgeInsets(top: 10, leading: 8, bottom: 50, trailing: 5))

                        }

                    }

                    Group {
                        VStack {
                            Spacer()
                            Text("About")
                                .bold()
                                .modifier(TopText())
                                .padding()
                            HStack{

                            Text("Make appointments using the easy to use calender")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 25))

                                Text("🗓")
                                    .font(.custom("Times New Roman", size: 100))
                                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 20))

                            }
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Password: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))

                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Phone Number: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Phone Number", text: $phoneNumber)
                                .modifier(CATextField())
                                .padding()
                        }

                        VStack {
                            Spacer()
                            Text("Contact")
                                .bold()
                                .modifier(TopText())
                                .padding()
                            Text("Email: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Email", text: $email)
                                .modifier(CATextField())
                            Spacer()
                        }

                    }





                }
                .frame(width: 390, height: .infinity)
                .onAppear(perform: {UITableView.appearance().contentInset.top = -35 })
                .background(
                    Image("background")
                    .resizable())
                .cornerRadius(10)
                .padding(EdgeInsets(top: -50, leading: 0, bottom: 0, trailing: 0))
            }
            .frame(maxWidth: .infinity)
            .background(Color("pastelBlue"))
        }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
 }

struct FrontHomepageView_Previews: PreviewProvider {
    static var previews: some View {
        FrontHomepageView()
    }
}
