//
//  doctorContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 4/21/22.
//

import SwiftUI

struct docContentView: View {
    var body: some View {
        TabView {
            docHomeView()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home")
                }
            DocView()
                .tabItem() {
                    Image(systemName: "calendar")
                    Text("Appointments")
                }
            myPatientsView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Patients")
                }
        }
    }
}

struct doctorContentView_Previews: PreviewProvider {
    static var previews: some View {
        docContentView()
    }
}
