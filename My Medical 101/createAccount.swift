//
//  createAccount.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 3/15/22.
//

import Foundation

struct CreateAccount {
        
    private(set) var emailCheck: [String:String] = [:]
        
    mutating func createAccountPage(_ email: String, for firstName: String) {
            if email != " "{
                if let accountInfo = emailCheck[email] {
                    emailCheck[email] = firstName
                }
            }
        }
    
     
    }

