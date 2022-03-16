//
//  CreateAccountView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/15/22.
//

import SwiftUI



// CREATE AN ACCOUNT CODE

struct ContentViewNewAccount: View {
 @State var email: String = ""
 @State var username: String = ""
 @State var password: String = ""
 @State var phoneNumber: String = ""
 @State var age: String = ""
 @State var insurance: String = ""
    
 @State var showErrorMessage = false

     var body: some View {
         NavigationView {
         
             ZStack {
                 Color("pastelBlue")
                     .ignoresSafeArea()

                 GeometryReader { geometry in
                     
                     VStack {
                         
                         VStack {
                             NavigationLink(destination: ContentViewHelpPage()) {
                                 Text("❓")
                                     .font(.custom("Courier New", size: 30))
                                     .frame(width: 400, height: 10, alignment: .topTrailing)
                             }
                             
                             Text("Create Account")
                                 .bold()
                                 .underline()
                                 .modifier(TopText())
                                 .padding()
                             Text("Please enter all the information below, as it is required")
                                 .padding()
                             
                             HStack {
                                 
                                 Spacer()
                                 Text("Email: ")
                                 TextField("Email", text: $email)
                                 Spacer()
                             }
                             HStack {
                                 Spacer()
                                 Text("Username: ")
                                 TextField("Username", text: $username)
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
                             HStack {
                                 Spacer()
                                 Text("Age: ")
                                 TextField("Age", text: $age)
                                 Spacer()
                             }
                             HStack {
                                 Spacer()
                                 Text("Insurance: ")
                                 TextField("Insurance", text: $insurance)
                                 Spacer()
                             }
                             
                             HStack{
                                                
                                 //NAVIGATION LINK
                                 Section {
                                 Button(action: {
                    
                                 }) {
                                     NavigationLink(destination: ContentViewHomepage()) {
                                   Text("Create my Account")
                                     .modifier(CreateButtonText())
                                 }
                                 }.padding(.top)
                                 }.disabled(email.isEmpty || username.isEmpty || password.isEmpty || phoneNumber.isEmpty || age.isEmpty || insurance.isEmpty)
                             }
                             
                             
                         }.frame(height: geometry.size.height / 1.25)
                         
                         Spacer()
                     }
                 }
             }
         }
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






