//
//  StartViewController.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
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
        performSegue(withIdentifier: "toResult", sender: self)
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
