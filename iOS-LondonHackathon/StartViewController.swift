//
//  StartViewController.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    @IBAction func didTouchNextButton() {
        performSegue(withIdentifier: "toResult", sender: self)
    }
}
