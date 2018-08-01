//
//  Messages.swift
//  Random Thoughts
//
//  Created by programming-xcode on 7/31/18.
//  Copyright © 2018 programming-xcode. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Message {
    private var content = String()
    private var image = UIImage()
    private var comments = [User: String]()
    private var likes = [User]() // Number of likes is likes.count
    
    func addComment(user: User, comment: String) {
        comments[user] = comment
    }
    
    func like(user: User) {
        likes.append(user)
    }
    
    func getLikes() -> [User] {
        return likes
    }
    
}
