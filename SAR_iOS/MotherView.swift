//
//  MotherView.swift
//  SAR_iOS
//
//  Created by Travis Tomer on 2/5/20.
//  Copyright © 2020 Caleb Harrison. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    // Get user logged on name
    let user = UserAccountManager().getUserLoginName()
    
    init() {
        NSLog("USER from MotherView = \(String(describing: user))")
    }
    // State can be userLoggedIn or userLoggedOut
    // Will be used to determine which view (login screen or DJI Map App) is shown
    // NEED TO DO: Determine how to store the user login status and use it to set this state.
    
    @State var page = "userLoggedIn"
    
    var body: some View {
        VStack {
            if page == "userLoggedIn" {
                // Display Login screen
                LogInScreen()
            } else if page == "userLoggedOut" {
                // Display Main screen (DJI MAP APP)
                MainApp()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
    }
}
