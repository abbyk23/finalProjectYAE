//
//  sixthViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit
import MessageUI

class sixthViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var writeyourLetter: UILabel!
    
    @IBOutlet weak var backMainMenu: UIButton!
    @IBOutlet weak var subject: UITextField!
    @IBOutlet weak var body: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backMainMenu.layer.cornerRadius = 10
        subject.delegate = self
               body.delegate = self
        
    }
    @IBAction func navSix(_ sender: Any) {
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        let picker = MFMailComposeViewController()
               picker.mailComposeDelegate = self
                   
               if let subjectText = subject.text {
                   picker.setSubject(subjectText)
               }
               picker.setMessageBody(body.text, isHTML: true)
                   
               present(picker, animated: true, completion: nil)
    }
    

// MFMailComposeViewControllerDelegate

// 1
func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
    dismiss(animated: true, completion: nil)
}

// UITextFieldDelegate
    
// 2
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
        
    return true
}
    
// UITextViewDelegate
    
// 3
func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    body.text = textView.text
        
    if text == "\n" {
        textView.resignFirstResponder()
            
        return false
    }
        
    return true
}
}
