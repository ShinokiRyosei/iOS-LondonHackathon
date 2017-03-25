//
//  Comment.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import Foundation

struct Comment {
    
    var text: String
    var isHelpful: Bool?
    
    init(text: String) {
        self.text = text
    }
    
}
