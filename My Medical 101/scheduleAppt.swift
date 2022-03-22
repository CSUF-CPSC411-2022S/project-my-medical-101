//
//  scheduleAppt.swift
//  My Medical 101
//
//  Created by csuftitan on 2/21/22.
//

import Foundation

class ScheduleAppt: ObservableObject {
    @Published var generalCheckup: Bool = false
    @Published var followUp: Bool = false
    @Published var refill: Bool = false
    @Published var injury: Bool = false
    @Published var typedReasonForVisit: String = ""
    @Published var submitButton: Bool = false
    
    init(){
        self.generalCheckup = false
        self.followUp = false
        self.refill = false
        self.injury = false
        self.typedReasonForVisit = ""
        self.submitButton = false
    }
}
