//
//  ViewController.swift
//  FunTrol
//
//  Created by Zach Fogelson on 6/13/15.
//  Copyright (c) 2015 Zach Fogelson. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
    let model : RedditerModel

    func viewDidLoad() {
        super.viewDidLoad()
        model = RedditerModel.init()
        
        model.subreddits["/r/chicago"] = "4, 1/1/15"
        model.subreddits["/r/finance"] = "3, 1/1/15"
        model.subreddits["/r/dogs"] = "2, 1/1/15"
    }


}

