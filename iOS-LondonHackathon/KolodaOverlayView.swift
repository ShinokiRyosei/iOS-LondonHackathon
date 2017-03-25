//
//  KolodaOverlayView.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import UIKit
import Koloda

class KolodaOverlayView: OverlayView {
    
    @IBOutlet lazy var overlayImageView: UIImageView! = {
        [unowned self] in
        
        var imageView = UIImageView(frame: self.bounds)
        self.addSubview(imageView)
        
        return imageView
        }()
    
    override var overlayState: SwipeResultDirection? {
        didSet {
            switch overlayState {
            case .right? :
                overlayImageView.image = UIImage(named: "ok")
            case .left? :
                overlayImageView.image = UIImage(named: "ng")
            default:
                overlayImageView.image = nil
            }
        }
    }
    
}
