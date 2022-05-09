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
    @EnvironmentObject var appointmentShown: ScheduleAppt
    
    var body: some View {
        NavigationView {
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
                    
                    VStack {
                        VStack {
                        
                        Text("\(appointmentShown.date)")
                                .bold()
                            .font(.custom("Times New Roman", size: 20))
                           .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                            
                        }
                        .frame(width:350, height: 80)
                        .background(Color.gray)
                        .opacity(0.3)
                        .cornerRadius(8)
                        
                    }
                    .frame(width: 200, height: 300)
                    .background(Color.white)
                    
                   
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
