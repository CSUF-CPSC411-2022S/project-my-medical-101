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
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    Text("Get started below!")
                        .font(.custom("Courier New", size: 32))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    
                 //   Text("My Medical 101 is an easy to use app for booking your doctor appointments")
                        
                    
                    Text("If you are a new patient:")
                        .bold()
                        .padding(.bottom)
                        .font(.custom("Courier New", size: 18))
                    
                    Button(action: {

                    }) {
                        NavigationLink(destination: ContentViewNewAccount()) {
                            Text("Create my Account")
                                .modifier(CreateButtonText())
                           }.navigationBarBackButtonHidden(true)
                       }.padding(.bottom)
                    
                    Text("If you already have an account:")
                        .bold()
                        .padding(.top)
                        .font(.custom("Courier New", size: 20))
                    
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
                            
                            Text("Dr. Vibha Rajagopalan  ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("SnellRoundhand", size: 20))
                                Spacer()
                            }
                            Text("Department of Pediatrics Physician")
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
                            Text("Family Practitioner Physician")
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
                            
                            Text("Dr. Anjali Patel  ")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("SnellRoundhand", size: 25))
                                Spacer()
                            }
                            Text("Department of Pediatrics Physician")
                                .font(.custom("arial", size: 18))
                                .padding(EdgeInsets(top: 10, leading: 8, bottom: 50, trailing: 5))
                            
                        }
                     
                    }
                    Text("⌄")
                        .font(.custom("Times New Roman", size: 100))
                        .foregroundColor(Color("pastelPurple"))
                    
                    Group {
                        VStack {
                            Spacer()
                            Text("About")
                                .bold()
                                .modifier(HomeTopText())
                                .padding()
                            HStack{
                                
                            Text("Make appointments using the easy to use calender")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: 25, bottom: 30, trailing: 10))
                                .font(.custom("Didot", size: 20))
                            
                                Text("🗓")
                                    .font(.custom("Times New Roman", size: 100))
                                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 20))
                                
                            }
                            
                            HStack{
                            Text("Have all your information saved on My Chart. Viewable by your doctor and editable!")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: 25, bottom: 30, trailing: 10))
                                .font(.custom("Didot", size: 20))
                            
                                Text("🩺")
                                    .font(.custom("Times New Roman", size: 100))
                                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 20))
                            }
                            
                            HStack{
                                
                            Text("Have your medications viewable to you easily")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: 25, bottom: 30, trailing: 10))
                                .font(.custom("Didot", size: 20))
                            
                                Text("💊")
                                    .font(.custom("Times New Roman", size: 85))
                                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 60, trailing: 20))
                                
                            }
                            
                            Spacer()
                        }
                       
                        Text("⌄")
                            .font(.custom("Times New Roman", size: 100))
                            .foregroundColor(Color("pastelPurple"))
                        
                        VStack {
                            Spacer()
                            Text("Contact")
                                .bold()
                                .modifier(HomeTopText())
                                .padding()
                            Text("Email")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Courier New", size: 25))
                            Text("mymedical101 @gmail.com")
                                .font(.custom("Times New Roman", size: 22))
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .border(Color("pastelPurple"), width: 4)
                            
                            Text("Phone")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Courier New", size: 25))
                            Text("123-456-7890")
                                .font(.custom("Times New Roman", size: 22))
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .border(Color("pastelPurple"), width: 4)
                            
                            Text("Social")
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.leading, 20)
                                .font(.custom("Courier New", size: 25))
                            Text("Insta: @mymedical101")
                                .font(.custom("Times New Roman", size: 22))
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .border(Color("pastelPurple"), width: 4)
                            
                            Spacer()
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
