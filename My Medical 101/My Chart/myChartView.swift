//
//  myChartView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation
import SwiftUI

struct ChartView: View {
    @EnvironmentObject var patient: Patient
    @EnvironmentObject var database: FirestoreDatabase
    
    @State var buttonClicked = false
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("My Chart").modifier(Headers())
                    Group {
                        HStack {
                            ZStack(alignment: .bottomTrailing) {
                                Button(action: {
                                    changeProfileImage = true
                                    openCameraRoll = true
                                }, label: {
                                    if changeProfileImage {
                                        Image(uiImage: imageSelected)
                                            .resizable()
                                            .frame(width: 120, height: 120)
                                            .clipShape(Circle())
                                    } else {
                                        Image("imagePlaceholder")
                                            .resizable()
                                            .clipShape(Circle())
                                            .frame(width: 120, height: 120)
                                    }
                                })
                                Image(systemName: "plus")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .clipShape(Circle())
                            }.sheet(isPresented: $openCameraRoll) {
                                ImagePicker(selectedImage: $imageSelected, sourceType: .photoLibrary)
                            }
                            HStack {
                                VStack {
                                    HStack {
                                        TextField("First Name", text: $database.logInFirstName)
                                            .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 0))
                                            .font(.custom("Times New Roman", size: 30))
                                        TextField("Last Name", text: $database.logInLastName)
                                            .padding(EdgeInsets(top: 30, leading: -30, bottom: 10, trailing: 10))
                                            .font(.custom("Times New Roman", size: 30))
                                    }
                                    Spacer()
                                    HStack {
                                        Text("DOB: \(database.logInDOB)")
                                            .padding(EdgeInsets(top: 5, leading: -70, bottom: 10, trailing: 10))
                                            .font(.custom("Times New Roman", size: 15))
                                    }
                                }
                            }
                            .frame(width: 250)
                            .cornerRadius(25)
                            .padding(EdgeInsets(top: -10, leading: 10, bottom: 50, trailing: 10))
                        }
                    }
                    VStack {
                        Group {
                            Spacer()
                            HStack {
                                Text("Gender: ")
                                    .padding(20)
                                TextField("Gender", text: $database.logInGender)
                                    .padding(EdgeInsets(top: 2, leading: 30, bottom: 5, trailing: 2))
                            }.modifier(chartInfo()).padding(.bottom)
                            Spacer()
                            HStack {
                                Text("Height: ")
                                    .padding(20)
                                TextField("Height", text: $database.logInHeight)
                                    .padding(EdgeInsets(top: 2, leading: 30, bottom: 5, trailing: 2))
                            }.modifier(chartInfo()).padding(.bottom)
                            Spacer()
                            HStack {
                                Text("Weight: ")
                                    .padding(20)
                                TextField("Weight", text: $database.logInWeight)
                                    .padding(EdgeInsets(top: 2, leading: 20, bottom: 5, trailing: 2))
                            }.modifier(chartInfo()).padding(.bottom)
                        }

                        Group {
                            HStack {
                                NavigationLink(destination: MedicationsView()) {
                                    Text("Medications")
                                        .padding(20)
                                    Text(">")
                                        .padding(EdgeInsets(top: 2, leading: 120, bottom: 5, trailing: 2))
                                    Spacer()
                                }
                            }
                                .font(.custom("Times New Roman", size: 20))
                                .frame(width: 300)
                                .background(Color("pastelBlue"))
                                .cornerRadius(25)
                                .foregroundColor(Color.black)
                            Spacer()
                            HStack {
                                NavigationLink(destination: Records()) {
                                    Text("Records")
                                        .padding(20)
                                    Text(">")
                                        .padding(EdgeInsets(top: 2, leading: 140, bottom: 5, trailing: 2))
                                    Spacer()
                                }
                            }
                                .font(.custom("Times New Roman", size: 20))
                                .frame(width: 300)
                                .background(Color("pastelBlue"))
                                .cornerRadius(25)
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct Information: View {
   @Binding var name: String
   @Binding var age: String
   @Binding var height: String
   var body: some View {
       Text(name)
       Text(age)
       Text(height)
   }
}

struct ChartView_Previews: PreviewProvider {
   static var previews: some View {
       ChartView()
   }
}
