//
//  StartViewController.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import UIKit
import SVProgressHUD
import SCLAlertView

class StartViewController: UIViewController {
    
    // demo flag
    var demoFlag: DemoFlag = .newPost
    
    @IBOutlet var textView: UITextView! {
        didSet {
            textView.returnKeyType = .done
        }
    }
    
    override func viewDidLoad() {
        
        textView.delegate = self
        super.viewDidLoad()
    }
    
    
    @IBAction func didTouchNextButton() {
        switch demoFlag {
        case .normalPost:
            SVProgressHUD.show()
            SVProgressHUD.dismiss(withDelay: 2.0) {
                self.performSegue(withIdentifier: "toResult", sender: self)
            }
        case .badPost:
            SVProgressHUD.show()
            SVProgressHUD.dismiss(withDelay: 2.0) {
                let alert = Alert(title: "Caution", text: "\n The post is not a good one.")
                alert.showAlert()
            }
        case .newPost:
            SVProgressHUD.show()
            SVProgressHUD.dismiss(withDelay: 2.0) {
                let alert = Alert(title: "Caution", text: "\n The post may be a new topic. \n Would you like to upload to Reddit Asthma?")
                alert.showChoice(choice: "Upload", action: {
                    SVProgressHUD.showSuccess(withStatus: "Successfully upload your post!\n Thank you.")
                    SVProgressHUD.dismiss(withDelay: 2.0)
                })
            }
        }
    }
}

extension StartViewController: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange,
                  replacementText text: String) -> Bool {
        
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}
