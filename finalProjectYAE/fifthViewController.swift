//
//  fifthViewController.swift
//  finalProjectYAE
//
//  Created by Abby Krier on 7/28/20.
//  Copyright © 2020 Abby Krier. All rights reserved.
//

import UIKit
import MessageUI

class fifthViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var letterGenerator: UILabel!
    @IBOutlet weak var backOutlet: UIButton!
    
    @IBOutlet weak var heading: UITextField!
    @IBOutlet weak var textbox: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        backOutlet.layer.cornerRadius = 10
        heading.delegate = self
               textbox.delegate = self
        
    }
    

    @IBAction func backtoMenu(_ sender: Any) {
    }
    
    @IBAction func sendButton(_ sender: Any) {
        let picker = MFMailComposeViewController()
            picker.mailComposeDelegate = self
                
            if let subjectText = heading.text {
                picker.setSubject(subjectText)
            }
            picker.setMessageBody(textbox.text, isHTML: true)
                
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
    textbox.text = textView.text
        
    if text == "\n" {
        textView.resignFirstResponder()
            
        return false
    }
        
    return true
}
}
