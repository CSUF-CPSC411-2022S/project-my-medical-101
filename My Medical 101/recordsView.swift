//
//  records.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/21/22.
//

import SwiftUI

struct Records: View {
    var body: some View {
        VStack {
            Text("My Records").modifier(chartTitle())
        }
    }
}

struct records_Previews: PreviewProvider {
    static var previews: some View {
        Records()
    }
}
