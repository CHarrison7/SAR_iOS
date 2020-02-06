//
//  ProductCommunicationManager.swift
//  SDK Swift Sample
//
//  Created by Arnaud Thiercelin on 3/22/17.
//  Copyright © 2017 DJI. All rights reserved.
//
import UIKit
import DJISDK

class ProductCommunicationManager: NSObject {

    // Set this value to true to use the app with the Bridge and false to connect directly to the product
    let enableBridgeMode = false
    
    // When enableBridgeMode is set to true, set this value to the IP of your bridge app.
    let bridgeAppIP = "10.81.55.116"
    
    func registerWithSDK() {
        let appKey = Bundle.main.object(forInfoDictionaryKey: SDK_APP_KEY_INFO_PLIST_KEY) as? String
        
        guard appKey != nil && appKey!.isEmpty == false else {
            NSLog("Please enter your app key in the info.plist")
            return
        }
        
        DJISDKManager.registerApp(with: self)
    }
    
}

extension ProductCommunicationManager : DJISDKManagerDelegate {
    func appRegisteredWithError(_ error: Error?) {
        
        NSLog("SDK Registered with error \(error?.localizedDescription)")
        
        if enableBridgeMode {
            DJISDKManager.enableBridgeMode(withBridgeAppIP: bridgeAppIP)
        } else {
            DJISDKManager.startConnectionToProduct()
        }
    }

    
    func productConnected(_ product: DJIBaseProduct?) {
        print("Product conencted!")
    }
    
    func productDisconnected() {
        print("Product disconencted!")
    }
    
    func didUpdateDatabaseDownloadProgress(_ progress: Progress) {
        NSLog("Download database : \n%lld/%lld" + String(progress.completedUnitCount), progress.totalUnitCount)
    }
    
    
    func componentConnected(withKey key: String?, andIndex index: Int) {
        
    }
    
    func djiLogonInitiated() {
        NSLog("Login to DJI User Account Initiated.\n")
    }

    
    func componentDisconnected(withKey key: String?, andIndex index: Int) {
        
    }
}
