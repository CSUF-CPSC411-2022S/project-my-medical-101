//
//  upcomingApptView.swift
//  My Medical 101
//
//  Created by Anjali Patel on 3/23/22.
//

import SwiftUI

struct upcomingApptView: View {
    @EnvironmentObject var appointmentShown: ScheduleAppt
    
    var body: some View {
        ZStack {
            Color("pastelBlue").ignoresSafeArea()
            VStack{
                Text("Upcoming Appointments")
                    .bold()
                    .underline()
                    .modifier(LogoText())
                    .padding()
                VStack {
                    Text("Appointments will be shown here")
                    Text("\(appointmentShown.date)")
                        .font(.custom("Times New Roman", size: 20))
                        .background(Color.gray)
                        .cornerRadius(8)
                        .padding(EdgeInsets(top: 50, leading: 50, bottom: 20, trailing: 50))
                    
                }
                .font(.custom("Times New Roman", size: 22))
                .frame(width: 200, height: 300)
                .background(Color.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 20, trailing: 50))
                
                HStack{
                    NavigationLink(destination: HelpPage()) {
                        Text("Help Page")
                            .font(.custom("Times New Roman", size: 25))
                            .frame(width: 120, height: 10, alignment: .topTrailing)
                            .foregroundColor(Color.blue)
                    }
                    .padding(EdgeInsets(top: 10, leading: 50, bottom: 20, trailing: 10))
                
                    
                    NavigationLink(destination: ContentViewLogin()) {
                        Text("Log Out")
                            .font(.custom("Times New Roman", size: 25))
                            .frame(width: 100, height: 10, alignment: .topTrailing)
                            .foregroundColor(Color.blue)
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 50))
                }
            }
        }
    }
}

struct upcomingApptView_Previews: PreviewProvider {
    static var previews: some View {
        upcomingApptView()
    }
}
