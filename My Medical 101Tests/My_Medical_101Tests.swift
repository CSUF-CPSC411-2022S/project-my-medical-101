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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        var myperson = Chart()
        myperson.person(name: "Brenda", age: 22)
        XCTAssertTrue(myperson.persons["Brenda"] == 22)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
