//
//  UserAccountManager.swift
//  SAR_iOS
//
//  Created by Travis Tomer on 2/6/20.
//  Copyright © 2020 Caleb Harrison. All rights reserved.
//

import SwiftUI
import DJISDK

class UserAccountManager: NSObject {

    func getUserLoginName() {
        
        let user = DJIUserAccountManager()
        
        var userName = user.loggedInDJIUserAccountName
    
        if (userName == nil) {
            userName = "No user logged in"
        } else {
            userName = "User logged in"
        }
        
        NSLog("Current user is: \(userName)")
        
    } // End of getuserLoginStatus func
} // End of UserAccountManager class



