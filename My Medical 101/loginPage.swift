//
//  loginPage.swift
//  My Medical 101
//
//  Created by Anjali Patel on 2/21/22.
//

import Foundation

struct Login {
    
    private(set) var userLogin: [String:String] = [:]
    
    mutating func loginPage(_ username: String, for password: String) {
        
        if username != " "{
            
            if let loginInfo = userLogin[username] {
                userLogin[username] = password
            }
                    
        }
    }
    
}

