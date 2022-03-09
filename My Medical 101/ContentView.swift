//
//  ContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//

import SwiftUI

// HOMEPAGE CODE

struct ContentView: View {
   
        var body: some View {
            
            ZStack {

                GeometryReader { geometry in
                    VStack {
                        Text("My Medical 101").modifier(TitleText())
                        VStack {
                            Image("projectIcon")
                                .resizable()
                                .frame(width: 300.0, height: 250.0)
                                .padding(.bottom)
                            Spacer()
                            
                            HStack {
                                Spacer()
                                Text("Welcome! (Patient Name)")
                                    .font(.custom("Courier New", size: 25))
                                    .bold()
                                Spacer()
                            }
                            
                            HStack{
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
                            
                            
                        }.frame(height: geometry.size.height / 1.25)
                        
                        Spacer()
                    }
                }
            }
        }
    }


    // TODO: Add custom modifier below then use it to customizes your views for Model 5

    struct TitleText: ViewModifier {
       func body(content: Content) -> some View {
            content
               .font(.custom("Marker Felt", size: 40))
               .foregroundColor(Color.black)
               .padding(EdgeInsets(top:70, leading: 20, bottom: 50, trailing: 20))
               .frame(maxWidth: .infinity, maxHeight: .infinity)
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







// CREATE AN ACCOUNT CODE

/* struct ContentView: View {
 @State var email: String = ""
 @State var username: String = ""
 @State var password: String = ""
 @State var phoneNumber: String = ""
 @State var age: String = ""
 @State var insurance: String = ""

     var body: some View {
         
         ZStack {
             Color(red: 0.3, green: 0.7, blue: 0.8)
                 .ignoresSafeArea()

             GeometryReader { geometry in
                 
                 VStack {
                     
                     VStack {
                         Text("Create Account")
                             .bold()
                             .underline()
                             .modifier(TitleText())
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
                             Button(action: {
                               print("Secret message")
                             }) {
                               Text("Create my Account")
                                 .modifier(ButtonText())
                             }.padding(.top)
                         }
                         
                         
                     }.frame(height: geometry.size.height / 1.25)
                     
                     Spacer()
                 }
             }
         }
     }
 }

 struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Courier New", size: 30))
            .foregroundColor(Color.black)
            .padding()
            .cornerRadius(10)
    }
 }

 struct ButtonText: ViewModifier {
 func body(content: Content) -> some View {
     content
        .font(.custom("Courier New", size: 22))
        .foregroundColor(Color.black)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
}
}

 */









// LOG IN PAGE CODE

/* struct ContentViewA: View {
 @State var username: String = ""
 @State var password: String = ""

     var body: some View {
         
         ZStack {
             Color(red: 0.3, green: 0.7, blue: 0.8)
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
                             .modifier(TitleText())
                             .padding()
                         
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
                         HStack{
                             Button(action: {
                               print("Secret message")
                             }) {
                               Text("Log In")
                                 .modifier(ButtonText())
                             }.padding(.top)
                         }
                         Text("Create new Account")
                             .bold()
                             .font(.custom("Courier New", size: 20))
                             .foregroundColor(Color.black)
                             .padding(.top, 20)
                         
                               /*  NavigationView {
                                     VStack {
                                         NavigationButton(destination: ViewB(items: $myItems)) {
                                             Text("Go To ViewB")
                                         }
                                     }
                                 } */
                             
                         
                         
                     }.frame(height: geometry.size.height / 1.25)
                     
                     Spacer()
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

 struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
         content
            .font(.custom("Courier New", size: 30))
            .foregroundColor(Color.black)
            .padding()
    }
 }

 struct ButtonText: ViewModifier {
 func body(content: Content) -> some View {
     content
        .font(.custom("Courier New", size: 22))
        .foregroundColor(Color.black)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
}
}
 */
