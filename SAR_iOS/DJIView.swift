//
//  ViewController.swift
//  SAR_iOS
//
//  Created by Travis Tomer on 2/11/20.
//  Copyright © 2020 Caleb Harrison. All rights reserved.
//

import UIKit
import DJIUXSDK

class DJIView: DUXDefaultLayoutViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.contentViewController?.view.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        self.contentViewController?.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.contentViewController?.view.setNeedsDisplay()
    }
    
}
