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
    @Published var date = Date()
    @Published var time = Date()
    @Published var strDate: String = ""
    @Published var strTime: String = ""
    @Published var messageDisplayed: String = ""
    @Published var purposeOfVisit: String = ""
    
    init() {
        self.generalCheckup = false
        self.followUp = false
        self.refill = false
        self.injury = false
        self.typedReasonForVisit = ""
        self.submitButton = false
        self.date = Date()
        self.time = Date()
        self.messageDisplayed = ""
        purposeOfVisit = ""
    }
    
    func alertMessage() -> String {
        if submitButton &&
            (generalCheckup == true ||
             followUp == true ||
             refill == true ||
             injury == true ||
             typedReasonForVisit != ""){
            messageDisplayed = "Your appointment has been scheduled!"
            
            if(generalCheckup == true){
                purposeOfVisit = "General Checkup"
            }
            else if(followUp == true){
                purposeOfVisit = "Follow up"
            }
            else if(refill == true){
                purposeOfVisit = "Refill"
            }
            else if(injury == true){
                purposeOfVisit = "Injury"
            }
            else if(typedReasonForVisit != ""){
                purposeOfVisit = typedReasonForVisit
            }
            else{}
            // to store date and time separately
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: time)
            let minute = calendar.component(.minute, from: time)
            strTime = String(hour) + ":" + String(minute)
            // TODO: add am and pm
            
            let day = calendar.component(.day, from: date)
            let month = calendar.component(.month, from: date)
            let year = calendar.component(.year, from: date)
            strDate = String(month) + "/" + String(day) + "/" + String(year)
        }
        else if submitButton &&
            (generalCheckup == false ||
             followUp == false ||
             refill == false ||
             injury == false ||
             typedReasonForVisit == ""){
                messageDisplayed = "Please select or fill out your reason for visit"
        }
        else{}
        
        return messageDisplayed
    }
}
