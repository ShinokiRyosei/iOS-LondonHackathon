//
//  Comment.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import Foundation

class Comment {
    
    var text: String
    var author: String
    var point: Int
    var isHelpful: Bool?
    
    init(text: String, author: String, point: Int) {
        self.text = text
        self.author = author
        self.point = point
        self.isHelpful = false
    }
    
    static var demoComments = [
        Comment(text: "aaa", author: "testA", point: 3),
        Comment(text: "bbb", author: "testB", point: 2),
        Comment(text: "ccc", author: "testC", point: 5),
        Comment(text: "ddd", author: "testD", point: 4),
        Comment(text: "eee", author: "testE", point: 7)
    ]
    
    static var savedComments: [Comment] {
        var ret: [Comment] = []
        for comment in self.demoComments {
            if comment.isHelpful! {
                ret.append(comment)
            }
        }
        return ret
    }
    
}
