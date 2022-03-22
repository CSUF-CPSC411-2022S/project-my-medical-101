//
//  myMedications.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/10/22.
//

import Foundation
import SwiftUI

struct Medications: View {
    var body: some View {
        VStack {
            Text("My Medications")
                .font(.custom("Marker Felt", size:50))
                .foregroundColor(Color.black)
                .padding(EdgeInsets(top: 100, leading: 20, bottom: 50, trailing: 20))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("pastelBlue"))
            HStack {
                
            }
            Text("Welcome to the medications page. Currently the Doctor has not prescribed you anything. Come back later")
        }
    }
}

struct MedicationsView_Previews: PreviewProvider {
    static var previews: some View {
        Medications()
    }
}
