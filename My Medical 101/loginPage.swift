//
//  loginPage.swift
//  My Medical 101
//
//  Created by Anjali Patel on 2/21/22.
//

import Foundation

struct Login {
    
    private(set) var userLogin: [String:String] = [:]
    
    mutating func loginPage(_ email: String, for password: String) {
        if email != " "{
            if let loginInfo = userLogin[email] {
                userLogin[email] = password
            }
        }
    }
    
  //  if (email == "") {
    //        var alert = UIAlertView(title: "Blank text field", message: "Please fill in the required information", delegate: //nil, cancelButtonTitle: "OK")
          //  alert.show()
            
        //}
}

