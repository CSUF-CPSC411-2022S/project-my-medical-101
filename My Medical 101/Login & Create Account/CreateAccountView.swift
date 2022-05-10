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
                        .modifier(LogoText())
                        .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
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
                                .disableAutocorrection(true)
                                .modifier(CATextField())
                                .padding()
                        }
                        Section {
                            Button(action: {
                                flag = database.add(p: patient)
                            }) {
                                Text("Create my Account")
                               }.padding(.top)
                            
                            NavigationLink(destination: ContentViewLogin()) {
                                Text("Go to Login")
                                    .modifier(CreateButtonText())
                               }.navigationBarBackButtonHidden(true)
                            
                        }.padding(EdgeInsets(top: 20, leading: 0, bottom: 50, trailing: 0))
                    }
                }
                .frame(width: 325, height: .infinity)
                .onAppear(perform: {UITableView.appearance().contentInset.top = -35 })
                .background(Color.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: -50, leading: 0, bottom: 0, trailing: 0))
            }
            .frame(maxWidth: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [.white, Color("pastelBlue"), Color("pastelBlue"), .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .ignoresSafeArea()
        }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
 }

struct Previews_CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNewAccount()
    }
}
