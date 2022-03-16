//
//  myChartView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation
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
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()

    var body: some View {
       GeometryReader { geometry in
           VStack {
               Section (header: Text("My Chart").modifier(chartTitle())) {
                   
               }
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
                                   .frame(width: 120, height: 120)
                                   .clipShape(Circle())
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
                           TextField("Name", text: $name)
                               .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 10))
                               .font(.custom("Times New Roman", size: 30))
                           Spacer()
                           HStack {
                               Text("DOB: ")
                                   .padding(5)
                                   .font(.custom("Times New Roman", size: 15))
                               TextField("mm/dd/yyyy", text: $dob)
                                   .font(.custom("Times New Roman", size: 15))
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
                       .font(.custom("Times New Roman", size: 20))
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

struct chartTitle: ViewModifier {
   func body(content: Content) -> some View {
       content
           .font(.custom("Times New Roman", size:60))
           .foregroundColor(Color.black)
           .padding(EdgeInsets(top: 100, leading: 20, bottom: 50, trailing: 20))
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color("pastelBlue"))
   }
}

struct chartInfo: ViewModifier {
   func body(content: Content) -> some View {
       content
           .font(.custom("Times New Romant", size: 20))
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

//struct ContentView_Previews: PreviewProvider {
//   static var previews: some View {
//       ChartView()
//   }
//}
