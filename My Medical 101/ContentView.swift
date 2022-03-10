//
//  ContentView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 2/21/22.
//

import SwiftUI

// LOG IN PAGE CODE

struct ContentViewLogin: View {
 @State var username: String = ""
 @State var password: String = ""

     var body: some View {
         NavigationView {
         
             ZStack {
                 Color("pastelBlue")
                     .ignoresSafeArea()

                 GeometryReader { geometry in
                     
                     VStack {
                         
                         VStack {
                             Text("My Medical 101")
                                 .bold()
                                 .underline()
                                 .modifier(LogoText())
                                 .padding()
                             
                             Text("Log In")
                                 .bold()
                                 .underline()
                                 .modifier(TopTitleText())
                                 .padding()
                             
                             HStack {
                                 Spacer()
                                 Text("Username: ")
                                 TextField("Username Required", text: $username)
                                 Spacer()
                             }
                             HStack {
                                 Spacer()
                                 Text("Password: ")
                                 TextField("Password Required", text: $password)
                                 Spacer()
                             }
                             HStack{
                                 Section {
                                 Button(action: {
                                     
                                 }) {
                                     //NAVIGATION LINK
                                     NavigationLink(destination: ContentViewHomepage()) {
                                   Text("Log In")
                                     .modifier(LoginButtonText())
                                     }
                                 }.padding(.top)
                             }.disabled(username.isEmpty || password.isEmpty)
                             }
                             
                             
                             //NAVIGATION LINK
                           NavigationLink(destination: ContentViewNewAccount()) {
                             Text("Create new Account")
                                 .bold()
                                 .font(.custom("Courier New", size: 20))
                                 .foregroundColor(Color.black)
                                 .padding(.top, 20)
                         }
                             
                         }.frame(height: geometry.size.height / 1.25)
                         
                         Spacer()
                     }
                 }
             }
         }
     }
 }


 struct LogoText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Courier New", size: 30))
            .foregroundColor(Color.white)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
    }
 }

 struct TopTitleText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Courier New", size: 30))
            .foregroundColor(Color.black)
            .padding()
    }
 }

 struct LoginButtonText: ViewModifier {
 func body(content: Content) -> some View {
     content
        .font(.custom("Courier New", size: 22))
        .foregroundColor(Color.black)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
}
}







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











// HOMEPAGE CODE

struct ContentViewHomepage: View {
   
        var body: some View {
            NavigationView {
                    
                ZStack {

                    GeometryReader { geometry in
                        VStack {
                            Text("My Medical 101").modifier(TitleText())
                            Spacer()
                            
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
                                      print("Secret message")
                                    }) {
                                      Text("My Chart")
                                        .modifier(ButtonText())
                                    }
                                    Spacer()
                                }.padding(.top)
                                
                                HStack{
                                    Button(action: {
                                      print("Secret message")
                                    }) {
                                      Text("Schedule Appointments")
                                        .modifier(ButtonText())
                                    }
                                }
                                HStack{
                                    Button(action: {
                                      print("Secret message")
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





// PAGE VIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHomepage()
    }
}
