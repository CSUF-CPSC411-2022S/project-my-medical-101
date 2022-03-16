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
                             NavigationLink(destination: HelpPage()) {
                                 Text("❓")
                                     .font(.custom("Courier New", size: 30))
                                     .frame(width: 400, height: 10, alignment: .topTrailing)
                             }
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


// PAGE VIEW

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentViewLogin()
//    }
//}
