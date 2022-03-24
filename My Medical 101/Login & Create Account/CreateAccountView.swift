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
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var phoneNumber: String = ""
    @State var insurance: String = ""
    @State var showErrorMessage = false
    
     var body: some View {
         NavigationView {
             ZStack {
                 Color("pastelBlue").ignoresSafeArea()
                 GeometryReader { geometry in
                     VStack {
                         VStack {
                             Text("Create Account")
                                 .bold()
                                 .underline()
                                 .modifier(TopText())
                                 .padding()
                             Text("Please enter all the information below, as it is required")
                                 .padding()
                             Group {
                                 HStack {
                                     Spacer()
                                     Text("Full name: ")
                                     TextField("John Smith", text: $patient.myName)
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("DOB: ")
                                     TextField("mm/dd/yyyy", text: $patient.dob)
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Gender: ")
                                     TextField("", text: $patient.gender)
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Height: ")
                                     TextField("5'5", text: $patient.height)
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Weight: ")
                                     TextField("", text: $patient.weight)
                                     Spacer()
                                 }
                             }
                             
                             Group {
                                 HStack {
                                     Spacer()
                                     Text("Email: ")
                                     TextField("Email", text: $email)
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Password: ")
                                     TextField("Password", text: $password)
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Phone Number: ")
                                     TextField("Phone Number", text: $phoneNumber)
                                     Spacer()
                                 }
                             }
                             
                             HStack {
                                 Spacer()
                                 Text("Username: ")
                                 TextField("Username", text: $username)
                                 Spacer()
                             }
//                             HStack {
//                                 Spacer()
//                                 Text("Insurance: ")
//                                 TextField("Insurance", text: $insurance)
//                                 Spacer()
//                             }
                             
                             HStack {

                                 //NAVIGATION LINK
                                 Section {
                                     Button(action: {

                                     }) {
                                         NavigationLink(destination: ContentViewHomepage()) {
                                             Text("Create my Account")
                                                 .modifier(CreateButtonText())
                                            }.navigationBarBackButtonHidden(true)
                                        }.padding(.top)
                                 }.disabled(email.isEmpty || username.isEmpty || password.isEmpty || phoneNumber.isEmpty)
                            }
                         }.frame(height: geometry.size.height / 1.25)
                         Spacer()
                     }
                 }
             }
         }
         .navigationBarBackButtonHidden(true)
         .navigationBarHidden(true)
     }
 }

 struct TopText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Courier New", size: 30))
            .foregroundColor(Color.black)
            .padding()
            .cornerRadius(10)
    }
 }

 struct CreateButtonText: ViewModifier {
     func body(content: Content) -> some View {
         content
            .font(.custom("Courier New", size: 22))
            .foregroundColor(Color.black)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
    }
}

struct NewAccount_Previews: PreviewProvider {
   static var previews: some View {
       ContentViewNewAccount()
   }
}

