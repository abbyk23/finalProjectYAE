//
//  secondViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var navIcon: UIImageView!
    @IBOutlet weak var legislatorLabel: UILabel!
    
    @IBOutlet weak var letterWritingDescriptionLabel: UILabel!
    @IBOutlet weak var resourcesDescription: UILabel!
    
    @IBOutlet weak var findYourRep: UIButton!
    @IBOutlet weak var letter: UIButton!
    @IBOutlet weak var resources: UIButton!
    @IBOutlet weak var letterWritingPage: UIButton!
    @IBOutlet weak var resourcesPage: UIButton!
    @IBOutlet weak var generatorPage: UIButton!
    @IBOutlet weak var yourLetterPage: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  findYourRep.layer.cornerRadius = 10
        letter.layer.cornerRadius = 10
        resources.layer.cornerRadius = 10
        
    }
    
    @IBAction func findYourRepresentativeButton(_ sender: Any) { UIApplication.shared.open(URL(string:"https://www.commoncause.org")! as URL, options: [:], completionHandler: nil)
  
 
    
    }
    
    @IBAction func letterWritingButton(_ sender: Any) {
    }
    
    @IBAction func resourcesButton(_ sender: Any) {
    }
    
}
