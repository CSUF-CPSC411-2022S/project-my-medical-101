//
//  ContentView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 2/21/22.
//

import SwiftUI

// LOG IN PAGE CODE

struct ContentViewLogin: View {
    @State var email: String = ""
    @State var password: String = ""

     var body: some View {
         NavigationView {
             ZStack {
                 Color("pastelBlue").ignoresSafeArea()
                 GeometryReader { geometry in
                     VStack {
                         HStack {
                             Text("My Medical 101")
                                 .bold()
                                 .modifier(LogoText())
                         }.padding(EdgeInsets(top: -40, leading: 0, bottom: 50, trailing: 0))
                         
                         VStack {
                             Group {
                                 VStack {
                                     Text("Login")
                                         .bold()
                                         .modifier(TopTitleText())
                                         .padding(EdgeInsets(top: 0, leading: -30, bottom: 0, trailing: 0))
                                     Text("Email ")
                                         .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 200))
                                     TextField("Email", text: $email)
                                         .padding()
                                         .background(Color.gray.opacity(0.1))
                                         .cornerRadius(40)
                                         .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 40))
                                     
                                     Text("Password ")
                                         .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 165))
                                     TextField("Password", text: $password)
                                         .padding()
                                         .background(Color.gray.opacity(0.1))
                                         .cornerRadius(40)
                                         .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 40))
                                     Text("Forgot Password?")
                                         .padding(EdgeInsets(top: 0, leading: -30, bottom: 10, trailing: 0))
                                         .foregroundColor(Color.gray)
                                 }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                                 
                                 
                             }
                             
                             Section {
                                 Button(action: {
                                     
                                 }) {
                                     //NAVIGATION LINK
                                     NavigationLink(destination: ContentViewHomepage()) {
                                   Text("Login")
                                     .modifier(LoginButtonText())
                                     }
                                 }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                             }.disabled(email.isEmpty || password.isEmpty)
                         }
                            .background(Color("pastelPurple"))
                            .cornerRadius(10)
                            .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                            
                         
                         VStack {
                             //NAVIGATION LINK
                             NavigationLink(destination: ContentViewNewAccount()) {
                                 Text("Create new Account")
                                     .bold()
                                     .font(.custom("Times New Roman", size: 20))
                                     .foregroundColor(Color.black)
                                     .padding(.top, 20)
                             }
                         }
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
            .font(.custom("Times New Roman", size: 30))
            .foregroundColor(Color.black)
            .padding()
            .background(Color("pastelPurple"))
            .cornerRadius(10)
    }
 }

 struct TopTitleText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Times New Roman", size: 30))
            .foregroundColor(Color.black)
            .padding()
    }
 }

 struct LoginButtonText: ViewModifier {
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


// PAGE VIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewLogin()
    }
}
