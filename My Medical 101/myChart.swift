//
//  myChart.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//

import Foundation
import SwiftUI

struct Chart {
    // add code on my chart for medical history
    private(set) var persons: [String:Int] = [:]
    
    mutating func person(name: String, age: Int) {
        persons[name] = age
    }
    
}
