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

    func testChartInfo() throws {
        var myperson = Chart()
        myperson.person(name: "Brenda", age: 22)
        XCTAssertTrue(myperson.persons["Brenda"] == 22)
    }

    func testNameChange() throws {
        let patient = Patient()
        patient.myName = "Brenda"
        patient.myName = "Vibha"
        // verify that the name in the field has been changed
        XCTAssertEqual(patient.myName, "Vibha")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
