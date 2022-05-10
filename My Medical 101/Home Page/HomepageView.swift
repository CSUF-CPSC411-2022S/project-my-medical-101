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
    @EnvironmentObject var database: FirestoreDatabase
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("My Medical 101")
                    .bold()
                    .modifier(Headers())
                    Image("headerIcon")
                        .resizable()
                        .frame(width: 250, height: 180)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Text("Welcome \(database.logInFirstName)!")
                        .font(.custom("Times New Roman", size: 25))
                        .bold()

                    Text("Upcoming Appointments").modifier(Temp())
                    
                    VStack{
                        Text("\(database.logInDate)")
                        Text("\(database.logInTime)")
                        Text("\(database.logInPurposeOfVisit)")
                    }.frame(width:350, height: 80)
                        .background(Color("pastelPurple"))
                        .cornerRadius(8)
                        .font(.custom("Times New Roman", size: 20))
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct contentHP_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewHomepage()
    }
}
