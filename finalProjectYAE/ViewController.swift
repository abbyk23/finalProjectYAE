//
//  ViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var YAEImageLabel: UIImageView!
    @IBOutlet weak var missionStatement: UILabel!
    
    @IBOutlet weak var clickHere: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clickHere.layer.cornerRadius = 10
        
    }

    @IBAction func welcomeButton(_ sender: Any) {
    }
    
}

