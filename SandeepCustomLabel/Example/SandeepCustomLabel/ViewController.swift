//
//  ViewController.swift
//  SandeepCustomLabel
//
//  Created by Hung Vu on 12/23/2020.
//  Copyright (c) 2020 Hung Vu. All rights reserved.
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

