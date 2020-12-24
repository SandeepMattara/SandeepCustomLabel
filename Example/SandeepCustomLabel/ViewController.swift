//
//  ViewController.swift
//  SandeepCustomLabel
//
//  Created by SandeepMattara on 12/23/2018.
//  Copyright (c) 2020 SandeepMattara. All rights reserved.
//

import UIKit
import SandeepCustomLabel

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        myLabel.setText(text: "SandeepCustomLabel")
    }
}

