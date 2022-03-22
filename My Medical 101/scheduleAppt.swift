//
//  scheduleAppt.swift
//  My Medical 101
//
//  Created by csuftitan on 2/21/22.
//

import Foundation

class ScheduleAppt: ObservableObject {
    @Published var typedReasonForVisit: String = ""
    @Published var submitButton: Bool = false
   
    init(){
        self.typedReasonForVisit = ""
        self.submitButton = false
    }
}
