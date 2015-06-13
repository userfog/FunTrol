//
//  AddViewController.swift
//  FunTrol
//
//  Created by Zach Fogelson on 6/13/15.
//  Copyright (c) 2015 Zach Fogelson. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var subRedditTextLabel: UITextField!
    var subredditName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueDone"){
            subredditName = subRedditTextLabel.text
        }
    }

}
