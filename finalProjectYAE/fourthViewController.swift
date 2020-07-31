//
//  fourthViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit

class fourthViewController: UIViewController {
    
    @IBOutlet weak var pencilIcon: UIImageView!
    @IBOutlet weak var letterWritingPageLabel: UILabel!
    @IBOutlet weak var letterGen: UIButton!
    @IBOutlet weak var writeLetter: UIButton!
    @IBOutlet weak var mainPage: UIButton!
    @IBOutlet weak var sourcePage: UIButton!
    @IBOutlet weak var generatorPage: UIButton!
    @IBOutlet weak var writeYourLetterPage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letterGen.layer.cornerRadius = 10
        writeLetter.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func letterWritingGenerator(_ sender: Any) {
    }
    
    @IBAction func writeYourLetterButton(_ sender: Any) {
    }
    
    @IBAction func navLetterwriting(_ sender: Any) {
    }
    
}
