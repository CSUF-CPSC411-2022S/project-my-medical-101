//
//  docHomePage.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation
import SwiftUI

class myDocHomePage : ObservableObject {
    @Published var name: String = ""
    @Published var dob: String = ""
    @Published var date: String = ""
    @Published var time: String = ""
    @Published var reasonForVisit: String = ""
    @EnvironmentObject var appointment: ScheduleAppt
    
    init(){
        self.name = "Patient 1"
        self.dob = "DOB"
        self.date = "\(appointment.date)"
        self.time = "\(appointment.time)"
        self.reasonForVisit = ""
    }
    
    func reasonForVisitText () -> String {
        if appointment.submitButton == true {
            if appointment.generalCheckup == true{
                reasonForVisit = "General Checkup"
            }
            else if appointment.followUp == true{
                reasonForVisit = "Follow up"
            }
            else if appointment.refill == true{
                reasonForVisit = "Refill"
            }
            else if appointment.injury == true{
                reasonForVisit = "Injury"
            }
            else if appointment.typedReasonForVisit != ""{
                reasonForVisit = "\(appointment.typedReasonForVisit)"
            }
            else{
                reasonForVisit = "Purpose of visit not listed"
            }
        }
        return reasonForVisit
    }
}
