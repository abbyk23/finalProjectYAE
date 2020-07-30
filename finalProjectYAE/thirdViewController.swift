//
//  thirdViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    @IBOutlet weak var resourceTitle: UILabel!
    
    @IBOutlet weak var reliableResources: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nprButton(_ sender:UIButton) {
        UIApplication.shared.open(URL(string:"https://www.npr.org")! as URL, options: [:], completionHandler: nil)
    }
    
   
    @IBAction func politicoButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.politico.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func ncbiAction(_ sender: UIButton) {
         UIApplication.shared.open(URL(string:"https://www.ncbi.nlm.nih.gov/pmc/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func harvardButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://hbswk.hbs.edu/Pages/browse.aspx?HBSTopic=Government%20and%20Politics")! as URL, options: [:], completionHandler: nil)
    }
}
