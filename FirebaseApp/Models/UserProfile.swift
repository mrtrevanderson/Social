//
//  User.swift
//  FirebaseApp
//
//  Created by Trevor Anderson on 9/13/18.
//  Copyright © 2018 Trevor Anderson. All rights reserved.
//

import Foundation

class UserProfile {
    var uid:String
    var username:String
    var photoURL:URL
    
    init(uid:String, username:String,photoURL:URL) {
        self.uid = uid
        self.username = username
        self.photoURL = photoURL
    }
}

