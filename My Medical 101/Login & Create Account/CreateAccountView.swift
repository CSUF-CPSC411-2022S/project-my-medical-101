//
//  CreateAccountView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/15/22.
//

import SwiftUI

// CREATE AN ACCOUNT CODE

struct ContentViewNewAccount: View {
    @EnvironmentObject var patient: Patient
    @EnvironmentObject var database: FirestoreDatabase
    
    @State var email: String = ""
    @State var password: String = ""
    @State var phoneNumber: String = ""
    @State private var selected = 1
    @State var flag: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Create Account")
                        .bold()
                        .underline()
                        .modifier(TopText())
                        .padding()
                    Text("Please fill out all the information ")
                    Text("below")
                        .padding(.bottom)
                    Text("Account Information:")
                        .bold()
                        .padding(.bottom)
                    Group {
                        VStack {
                            Spacer()
                            Text("First name: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Ex: John", text: $patient.firstName)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Last name: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Ex: Smith", text: $patient.lastName)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("DOB: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("mm/dd/yyyy", text: $patient.dob)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Gender: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Gender", text: $patient.gender)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Height: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Ex: 5'5", text: $patient.height)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Weight: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Ex: lbs", text: $patient.weight)
                                .modifier(CATextField())
                            Spacer()
                        }
                     
                    }
                    Group {
                        VStack {
                            Spacer()
                            Text("Email: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Email", text: $patient.email)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Password: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Password", text: $patient.password)
                                .modifier(CATextField())
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Text("Phone Number: ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Times New Roman", size: 16))
                            TextField("Phone Number", text: $patient.phoneNumber)
                                .modifier(CATextField())
                                .padding()
                        }
                        VStack{
                            Picker(selection: $selected, label: Text("Pick if you are a patient or a doctor:")) {
                                            Text("Patient").tag(1)
                                            Text("Doctor").tag(2)
                                        }
                                       // .pickerStyle(.radioGroup)
                                      //  .horizontalRadioGroupLayout()
                        }
                            .frame(width: 100, height: 50)
                            .border(Color("pastelBlue"))
                        Section {
                            Button(action: {
                                flag = database.add(p: patient)
                                // tracing
                                //print("email: " + patient.email)
                                print("Account created")
                            }) {
                                Text("Create my Account")
                               }.padding(.top)
                            
                            NavigationLink(destination: ContentView()) {
                                Text("Go to Home page")
                                    .modifier(CreateButtonText())
                               }.navigationBarBackButtonHidden(true)
                            
                        }.padding()
                        Section {
                            Button(action: {

                            }) {
                                NavigationLink(destination: docContentView()) {
                                    Text("Doctor Account")
                                        .modifier(CreateButtonText())
                                   }.navigationBarBackButtonHidden(true)
                               }.padding(.top)
                        }.disabled(email.isEmpty || password.isEmpty || phoneNumber.isEmpty)
                            .padding()
                    }
                }
                .frame(width: 325, height: .infinity)
                .onAppear(perform: {UITableView.appearance().contentInset.top = -35 })
                .background(Color.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: -50, leading: 0, bottom: 0, trailing: 0))
            }
            .frame(maxWidth: .infinity)
            .background(Color("pastelBlue"))
        }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
 }

struct Previews_CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNewAccount()
    }
}
