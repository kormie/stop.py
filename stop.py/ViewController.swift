//
//  ViewController.swift
//  stop.py
//
//  Created by David Kormushoff on 7/27/16.
//  Copyright © 2016 David Kormushoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counter: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "00:00:00"
        counter.textColor = .whiteColor()
        counter.textAlignment = .Center
        counter.font = UIFont.systemFontOfSize(50)
        counter.backgroundColor = .clearColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

