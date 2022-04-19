//
//  ContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 4/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContentViewHomepage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ChartView()
                .tabItem {
                    Image(systemName: "chart.bar.doc.horizontal")
                    Text("My Chart")
                }
            ScheduleView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Appointments")
                }
            HelpPage()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Help")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
