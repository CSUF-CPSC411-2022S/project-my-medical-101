//
//  scheduleAppt.swift
//  My Medical 101
//
//  Created by csuftitan on 2/21/22.
//

import Foundation

struct scheduleAppt{
    private(set) var apptDate: [String:Int] = [:]
    
    mutating func date(_ month: String, for day: Int){
        if day > 0 {
            if let day1 = apptDate[month]{
                apptDate[month] = day
            }
            if let day1 = apptDate[month], day1 < 31{
                apptDate[month] = day1
            }
        }
    }
    
}
