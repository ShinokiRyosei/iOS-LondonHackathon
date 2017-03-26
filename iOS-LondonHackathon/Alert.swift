//
//  Alert.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/26.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import Foundation
import SCLAlertView
import SVProgressHUD

class Alert {
    var title: String
    var text: String
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
    }
    
    func showAlert() {
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: true
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.iconTintColor = UIColor.white
        alertView.showCustom(title, subTitle: text, color: UIColor.red, icon: #imageLiteral(resourceName: "reddit"), closeButtonTitle: "OK")
    }
    
    func showChoice(choice: String, action: @escaping (Void)->Void) {
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: true
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.addButton(choice){
            action()
        }
        alertView.iconTintColor = UIColor.white
        alertView.showCustom(title, subTitle: text, color: UIColor.red, icon: #imageLiteral(resourceName: "reddit"), closeButtonTitle: "Cancel")
    }
}
