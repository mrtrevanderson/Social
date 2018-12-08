//
//  Post.swift
//  FirebaseApp
//
//  Created by Trevor Anderson on 9/13/18.
//  Copyright © 2018 Trevor Anderson. All rights reserved.
//

import Foundation


class Post {
    var id:String
    var author:UserProfile
    var text:String
    var createdAt:Date
    
    init(id:String, author:UserProfile,text:String,timestamp:Double) {
        self.id = id
        self.author = author
        self.text = text
        self.createdAt = Date(timeIntervalSince1970: timestamp / 1000)
    }
}
