//
//  My_Medical_101Tests.swift
//  My Medical 101Tests
//
//  Created by Brenda Gomez on 2/21/22.
//

import XCTest
@testable import My_Medical_101

class My_Medical_101Tests: XCTestCase {
    
    func testAddUser() {
        var newUser = Login()
        newUser.loginPage("NewUser20", for: "RandomPassword")
        //checking for valid information
        XCTAssertEqual(newUser.userLogin["NewUser20"], "RandomPassword")
    }
    
    func testWrongUser() {
            var newUser2 = Login()
            newUser2.loginPage("NewUser20", for: "RandomPassword")
            //checking for invalid username
            XCTAssertEqual(newUser2.userLogin["NewUserWrong"], nil)
    }
    
    func testWrongPassword() {
        var newUser3 = Login()
        newUser3.loginPage("NewUser20", for: "RandomPassword")
        //checking for invalid password
        XCTAssertEqual(newUser3.userLogin["nil"], "WrongPassword")
    }


    func testChartInfo() throws {
        var myperson = Chart()
        myperson.person(name: "Brenda", age: 22)
        XCTAssertTrue(myperson.persons["Brenda"] == 22)
    }

    func testNameChange() throws {
        let patient = Patient()
        patient.firstName = "Brenda"
        patient.firstName = "Vibha"
        // verify that the name in the field has been changed
        XCTAssertEqual(patient.firstName, "Vibha")
    }
    
    func testMeds() throws {
        let patient = Patient()
        patient.firstName = "Brenda"
        let cetrizine = Medication()
        cetrizine.name = "cetrizine"
        cetrizine.dosage = "30 mg"
        cetrizine.freq = "Twice daily"
        patient.meds.append(cetrizine)
        XCTAssertNotNil(patient.meds)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
