//
//  HomepageView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/15/22.
//

import SwiftUI

// HOMEPAGE CODE

struct ContentViewHomepage: View {
    @EnvironmentObject var patient: Patient
    var body: some View {
        ScrollView {
            VStack {
                Text("My Medical 101").modifier(Headers())
                Image("headerIcon")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("Welcome \(patient.firstName)!")
                    .font(.custom("Times New Roman", size: 25))
                    .bold()
                Text("Upcoming Appointments").modifier(Temp())
                Text("Old Appointments").modifier(Temp())
                Text("My History ").modifier(Temp())
                Text("My Chart").modifier(Temp())
                Text("IDK").modifier(Temp())
                Text("hehe").modifier(Temp())
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}

struct contentHP_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHomepage()
    }
}
