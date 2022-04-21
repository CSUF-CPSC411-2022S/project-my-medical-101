//
//  docHome.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 4/21/22.
//

import SwiftUI

struct docHomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("My Medical 101").modifier(Headers())
                Image("headerIcon")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("Welcome Doctor!")
                    .font(.custom("Times New Roman", size: 25))
                    .bold()
                Text("Upcoming Appointments").modifier(Temp())
                Text("Old Appointments").modifier(Temp())
                Text("My History").modifier(Temp())
                Text("Hospital Locations").modifier(Temp())
                Text("IDK").modifier(Temp())
                Text("hehe").modifier(Temp())
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}

struct docHome_Previews: PreviewProvider {
    static var previews: some View {
        docHomeView()
    }
}
