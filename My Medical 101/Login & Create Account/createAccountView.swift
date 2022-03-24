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
    @State var password: String = ""
    @State var phoneNumber: String = ""
    @State var insurance: String = ""
    @State private var selected = 1
    //@State var showErrorMessage = false
    
     var body: some View {
         NavigationView {
             ZStack {
                 Color("pastelBlue")
                     .ignoresSafeArea()
                 GeometryReader { geometry in
                     VStack {
                         VStack {
                            // NavigationLink(destination: HelpPage()) {
                              //   Text("❓")
                                //     .font(.custom("Courier New", size: 30))
                                  //   .frame(width: 400, height: 10, alignment: .topTrailing)
                             //}
                             Text("Create Account")
                                 .bold()
                                 .underline()
                                 .modifier(TopText())
                                 .padding()
                             Text("Please enter all the information ")
                             Text("below, as it is required")
                                 .padding(.bottom)
                             Text("Account Information:")
                                 .bold()
                                 .padding(.bottom)
                             Group {
                                 HStack {
                                     Spacer()
                                     Text("First name: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 10))
                                     TextField("Ex: John", text: $patient.firstName)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Last name: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 12))
                                     TextField("Ex: Smith", text: $patient.lastName)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("DOB: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 28))
                                     TextField("mm/dd/yyyy", text: $patient.dob)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Gender: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 16))
                                     TextField("Gender", text: $patient.gender)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Height: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 16))
                                     TextField("Ex: 5'5", text: $patient.height)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Weight: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 16))
                                     TextField("Ex: lbs", text: $patient.weight)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                              
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
                                         NavigationLink(destination: ContentViewNewAccount2()) {
                                             Text("Continue")
                                                 .modifier(CreateButtonText())
                                            }
                                        }.padding(.top)
                                 }.disabled(patient.firstName.isEmpty || patient.lastName.isEmpty || patient.dob.isEmpty || patient.gender.isEmpty || patient.height.isEmpty || patient.weight.isEmpty)
                            }
                         }
                         Spacer()
                     }
                     .onAppear(perform: {
                         UITableView.appearance().contentInset.top = -35 })
                     .background(Color.white)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 0, leading: 35, bottom: 0, trailing: 35))
                 }
             }
         }
     }
 }




//PAGE 2 OF CREATE ACCOUNT


struct ContentViewNewAccount2: View {
    @EnvironmentObject var patient: Patient
    @State var email: String = ""
    @State var password: String = ""
    @State var phoneNumber: String = ""
   // @State var insurance: String = ""
    @State private var selected = 1
    //@State var showErrorMessage = false
    
     var body: some View {
         NavigationView {
             ZStack {
                 Color("pastelBlue")
                     .ignoresSafeArea()
                 GeometryReader { geometry in
                     VStack {
                         VStack {
                            // NavigationLink(destination: HelpPage()) {
                              //   Text("❓")
                                //     .font(.custom("Courier New", size: 30))
                                  //   .frame(width: 400, height: 10, alignment: .topTrailing)
                             //}
                             Text("Create Account")
                                 .bold()
                                 .underline()
                                 .modifier(TopText())
                                 .padding()
                             Text("Please enter all the information ")
                             Text("below, as it is required")
                                 .padding(.bottom)
                             Text("Login Information:")
                                 .bold()
                                 .padding(.bottom)
                             
                             Group {
                                 HStack {
                                     Spacer()
                                     Text("Email: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 18))
                                     TextField("Email", text: $email)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Password: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 8))
                                     TextField("Password", text: $password)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 HStack {
                                     Spacer()
                                     Text("Phone Number: ")
                                         .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 8))
                                     TextField("Phone Number", text: $phoneNumber)
                                         .modifier(textTypingBox())
                                     Spacer()
                                 }
                                 VStack{
                                     Text("Pick if you are a patient or a doctor:")
                                         .padding(.top)
                                     Picker(selection: $selected, label: Text("Pick if you are a patient or a doctor:")) {
                                                     Text("Patient or Doctor").tag(1)
                                                     Text("Patient").tag(2)
                                                     Text("Doctor").tag(3)
                                                 }
                                                // .pickerStyle(.radioGroup)
                                               //  .horizontalRadioGroupLayout()
                                 }
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
                                 }.disabled(email.isEmpty || password.isEmpty || phoneNumber.isEmpty)
                            }
                         }
                         Spacer()
                     }
                     .onAppear(perform: {
                         UITableView.appearance().contentInset.top = -35 })
                     .background(Color.white)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 0, leading: 35, bottom: 0, trailing: 35))
                 }
             }
         }
     }
 }




 struct TopText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Times New Roman", size: 25))
            .foregroundColor(Color.black)
            .padding()
            .cornerRadius(10)
    }
 }

 struct CreateButtonText: ViewModifier {
     func body(content: Content) -> some View {
         content
             .frame(width: 200, height: 30)
            .font(.custom("Times New Roman", size: 22))
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(Color("pastelBlue"))
            .cornerRadius(40)
    }
}

struct textTypingBox: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(40)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 20))
            .frame(width: 200, height: 50)
   }
}

struct Previews_CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNewAccount()
    }
}
