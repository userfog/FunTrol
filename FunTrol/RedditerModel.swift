//
//  RedditerModel.swift
//  FunTrol
//
//  Created by Zach Fogelson on 6/13/15.
//  Copyright (c) 2015 Zach Fogelson. All rights reserved.
//

import Foundation

class RedditerModel : NSObject{
    
    typealias SubRedditInfo = SubredditMeta
    
    var subreddits : Dictionary<String, SubRedditInfo>
    let baseUrl : String = "https://www.reddit.com"
    var format : String
    var lastAfter : String
    
    override init() {
        subreddits = Dictionary<String, SubRedditInfo>()
        lastAfter = ""
        format = "json"
        super.init()
    }
    
//    required convenience init(coder decoder: NSCoder){
//        self.init()
//        var form = decoder.decodeObjectForKey("format") as String
//        var subs = decoder.decodeObjectForKey("format")as Dictionary<String, SubRedditInfo>
//        var last = decoder.decodeObjectForKey("format") as String
//        
//        // If decoded values exist use them. Otherwise stick with the defaults
//        self.format = (form != "" ? form : self.format)
//        self.lastAfter = (last != "" ? form : self.lastAfter)
//        self.subreddits = ((subs.count != 0) ? subs : self.subreddits)
//    }
    
    func update() {
        var request : String
        if(lastAfter.isEmpty){
            request = baseUrl + "/r/chicago" + format
        } else {
            request = baseUrl + "/r/chicago" + format + "?after=" + lastAfter
        }
        
        let url = NSURL(string: request)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
        }
        task.resume()
    }
    
    func encodeWithCoder(coder: NSCoder){
        coder.encodeObject(self.subreddits, forKey: "subreddits")
        coder.encodeObject(self.format, forKey: "author")
        coder.encodeObject(self.lastAfter, forKey: "lastAfter")
    }
    
    func convertToJSON(){
        var json = NSJSONSerialization.dataWithJSONObject(self, options: nil, error: nil)
        println(json)
    }
    
}
