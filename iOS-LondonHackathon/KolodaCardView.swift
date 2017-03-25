//
//  KolodaCardView.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import UIKit

class KolodaCardView: UIView {
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    func configure(comment: Comment) {
        authorLabel.text = comment.author
        textLabel.text = comment.text
        pointLabel.text = String(comment.point)
    }
    
}
