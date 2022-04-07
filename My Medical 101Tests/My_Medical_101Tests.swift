//
//  My_Medical_101Tests.swift
//  My Medical 101Tests
//
//  Created by Brenda Gomez on 2/21/22.
//

import XCTest
@testable import My_Medical_101

class My_Medical_101Tests: XCTestCase {

    func testExample() throws {
        var myperson = Chart()
        myperson.person(name: "Brenda", age: 22)
        XCTAssertTrue(myperson.persons["Brenda"] == 22)
    }

    func testApptScheduledMessage() {
            let message = ScheduleAppt()
            message.submitButton = true
            message.generalCheckup = true
            XCTAssertEqual(message.alertMessage(), "Your appointment has been scheduled!")
    }
        
    func testApptNotScheduledMessage() {
        let message = ScheduleAppt()
        message.submitButton = true
        XCTAssertEqual(message.alertMessage(), "Please select or fill out your reason for visit")
    }
    
    func testDoctorHomePage(){
        let docPage = myDocHomePage()
        let appt = ScheduleAppt()
        appt.generalCheckup = true
        XCTAssertEqual(docPage.reasonForVisitText(), "General Checkup")
    }

}
