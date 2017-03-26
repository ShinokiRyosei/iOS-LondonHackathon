//
//  ShareActivity.swift
//  RunningCrabCamera
//
//  Created by 荒川陸 on 2016/09/17.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit

final class ShareActivityController {
    
    class func create(_ object: UIImage) -> UIActivityViewController {
        
        let text = "I've found a good solution on Reddit Asthma."
        let activityController = UIActivityViewController(activityItems: [text, object], applicationActivities: nil)
        
        // 許可しない共有を設定
        // コメントにしているのは許可するもの
        activityController.excludedActivityTypes =  [
            // UIActivityTypePostToFacebook,
            // UIActivityTypePostToTwitter,
            // UIActivityTypePostToWeibo,
            // UIActivityTypeMessage,
            // UIActivityTypeMail,
            UIActivityType.print,
            // UIActivityTypeCopyToPasteboard,
            UIActivityType.assignToContact,
            //UIActivityTypeSaveToCameraRoll,
            // UIActivityTypeAddToReadingList,
            UIActivityType.postToFlickr,
            UIActivityType.postToVimeo,
            // UIActivityTypePostToTencentWeibo,
            // UIActivityTypeAirDrop
        ]
        
        activityController.completionWithItemsHandler = nil
        return activityController
    }
}
