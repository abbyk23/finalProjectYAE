//
//  secondViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var legislatorLabel: UILabel!
    @IBOutlet weak var letterWritingDescriptionLabel: UILabel!
    @IBOutlet weak var resourcesDescription: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func findYourRepresentativeButton(_ sender: Any) { UIApplication.shared.open(URL(string:"https://www.commoncause.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func letterWritingButton(_ sender: Any) {
    }
    
    @IBAction func resourcesButton(_ sender: Any) {
    }
    
    
    
}
