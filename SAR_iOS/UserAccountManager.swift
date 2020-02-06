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
        
        print("Current user is: \(String(describing: userName))")
        NSLog("Current user is: \(String(describing: userName))")
    
        if (userName == nil) {
            userName = "NIL"
        } else {
            userName = "MY FUNCTION WORKS BITCHES!"
        }
    }
}



