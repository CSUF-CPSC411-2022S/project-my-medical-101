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
                    Text("My Medical 101").modifier(Headers())
                    Image("headerIcon")
                        .resizable()
                        .frame(width: 400, height: 200)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Text("Welcome \(database.logInFirstName)!")
                        .font(.custom("Times New Roman", size: 25))
                        .bold()

                    Text("Upcoming appointment: ")
                    
                    VStack{
                        Text("\(database.logInDate)")
                        Text("\(database.logInTime)")
                        Text("\(database.logInPurposeOfVisit)")
                    }.frame(width:350, height: 80)
                        .background(Color.gray)
                        .opacity(0.3)
                        .cornerRadius(8)
                    
                    Section {
                        Button(action: {
                        }) {
                            NavigationLink(destination: ContentViewLogin()) {
                                Text("Log Out")
                                    .font(.custom("Times New Roman", size: 20))
                                    .frame(width: 300, height: 100)
                                    .foregroundColor(.red)
                               }.navigationBarBackButtonHidden(true)
                           }.padding(.top)
                    }
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
