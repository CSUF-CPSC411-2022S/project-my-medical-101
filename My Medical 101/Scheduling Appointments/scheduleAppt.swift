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
    @Published var messageDisplayed: String = ""
    
    init(){
        self.generalCheckup = false
        self.followUp = false
        self.refill = false
        self.injury = false
        self.typedReasonForVisit = ""
        self.submitButton = false
        self.date = Date()
        self.time = Date()
        self.messageDisplayed = ""
    }
    
    func alertMessage() -> String {
        if submitButton &&
            (generalCheckup == true ||
             followUp == true ||
             refill == true ||
             injury == true ||
             typedReasonForVisit != ""){
            messageDisplayed = "Your appointment has been scheduled!"
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
 
