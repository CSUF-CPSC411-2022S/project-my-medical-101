//
//  ContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//

import SwiftUI

struct ChartView: View {
    @State var name: String = ""
    @State var age: String = ""
    @State var gender: String = ""
    @State var height: String = ""
    @State var weight: String = ""
    @State var dob: String = ""
    @State var buttonClicked = false
    @State private var meds = ["Amlodipine", "Tylenol", "Cetrizine"]
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Section (header: Text("My Chart").modifier(chartTitle())) {
                        
                    }
                    HStack {
                        Text("👩🏽")
                            .padding(10)
                            .font(.custom("Marker Felt", size:100))
                            .overlay(Circle().stroke(Color("pastelBlue"), lineWidth: 4))
                        HStack {
                            VStack {
                                TextField("Name", text: $name)
                                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 10))
                                    .font(.custom("Marker Felt", size: 30))
                                Spacer()
                                HStack {
                                    Text("DOB: ")
                                        .padding(5)
                                        .font(.custom("Marker Felt", size: 15))
                                    TextField("mm/dd/yyyy", text: $dob)
                                        .font(.custom("Marker Felt", size: 15))
                                }
                                
                            }
                        }
                        .frame(width: 250)
                        .cornerRadius(25)
                        .padding(EdgeInsets(top: -10, leading: 10, bottom: 50, trailing: 10))
                    }
                    VStack {
                        Spacer()
                        
                        HStack {
                            Text("Age: ")
                                .padding(20)
                            TextField("Age", text: $age)
                                .padding(EdgeInsets(top: 2, leading: 50, bottom: 5, trailing: 2))
                        }.modifier(chartInfo()).padding(.bottom)
                        Spacer()
                        HStack {
                            Text("Gender: ")
                                .padding(20)
                            TextField("Gender", text: $gender)
                                .padding(EdgeInsets(top: 2, leading: 30, bottom: 5, trailing: 2))
                        }.modifier(chartInfo()).padding(.bottom)
                        Spacer()
                        HStack {
                            Text("Height: ")
                                .padding(20)
                            TextField("Height", text: $height)
                                .padding(EdgeInsets(top: 2, leading: 30, bottom: 5, trailing: 2))
                        }.modifier(chartInfo()).padding(.bottom)
                        Spacer()
                        HStack {
                            Text("Weight: ")
                                .padding(20)
                            TextField("Weight", text: $weight)
                                .padding(EdgeInsets(top: 2, leading: 20, bottom: 5, trailing: 2))
                        }.modifier(chartInfo()).padding(.bottom)
                        Spacer()
                        HStack {
                            NavigationLink(destination: Medications()) {
                                Text("Medications")
                                    .padding(20)
                                Text(">")
                                    .padding(EdgeInsets(top: 2, leading: 120, bottom: 5, trailing: 2))
                                Spacer()
                            }
                        }
                            .font(.custom("Marker Felt", size: 20))
                            .frame(width: 300)
                            .background(Color("pastelBlue"))
                            .cornerRadius(25)
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    HStack {
                        NavigationLink(destination: HelpPage()) {
                            Text("Help Page")
                                .padding(EdgeInsets(top: 50, leading: 170, bottom: 5, trailing: 2))
                            Spacer()
                        }
                    }
                }.frame(height: geometry.size.height/1.5)
            }
        }
    }
}

//struct Medications: View {
//    var body: some View {
//        VStack {
//            Text("My Medications")
//                .font(.custom("Marker Felt", size:50))
//                .foregroundColor(Color.black)
//                .padding(EdgeInsets(top: 100, leading: 20, bottom: 50, trailing: 20))
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color("pastelBlue"))
//            HStack {
//
//            }
//            Text("Welcome to the medications page. Currently the Doctor has not prescribed you anything. Come back later")
//        }
//    }
//}



struct chartTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Marker Felt", size:60))
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top: 100, leading: 20, bottom: 50, trailing: 20))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("pastelBlue"))
    }
}

struct chartInfo: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Marker Felt", size: 20))
            .frame(width: 300)
            .background(Color("pastelPurple"))
            .cornerRadius(25)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}


//struct Previews_ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Medications()
//    }
//}
