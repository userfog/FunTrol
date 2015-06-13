//
//  SubredditMeta.swift
//  FunTrol
//
//  Created by Zach Fogelson on 6/13/15.
//  Copyright (c) 2015 Zach Fogelson. All rights reserved.
//

import Foundation

class SubredditMeta : NSObject {
    var lastAfter : String
    var lastQuery : NSDate
    var nextQuery : Int
    var name : String

    override init() {
        lastAfter = ""
        nextQuery = 1
        name = ""
        lastQuery = NSDate()
        super.init()
    }
    
    init(name: String) {
        lastAfter = ""
        nextQuery = 1
        self.name = name
        lastQuery = NSDate()
        super.init()
    }
    
    init(name: String, interval: Int) {
        lastAfter = ""
        nextQuery = interval
        self.name = name
        lastQuery = NSDate()
        super.init()
    }
    
}