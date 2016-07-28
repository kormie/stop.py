//
//  ViewController.swift
//  stop.py
//
//  Created by David Kormushoff on 7/27/16.
//  Copyright © 2016 David Kormushoff. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var timerRunning = false
    var timer = NSTimer()
    var count = 0
    var counter = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(counter)
        
        let views = ["counter": counter]
        counter.text = "00:00:00"
        counter.translatesAutoresizingMaskIntoConstraints = false
        let lrCons = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[counter]-|", options: [.AlignAllCenterY ], metrics: nil, views: views)
        self.view.addConstraints(lrCons)
        let tbCons = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[counter]-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(tbCons)
        counter.textColor = .whiteColor()
        counter.textAlignment = .Center
        counter.font = .systemFontOfSize(50)
        counter.backgroundColor = .clearColor()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(startMyTimer)))
    }jjjj
    
    func startMyTimer() -> Void {
        if timerRunning {
            timer.invalidate()
            timerRunning = false
        } else{
            timer = .scheduledTimerWithTimeInterval(1, target: self, selector: #selector(updateClock), userInfo: nil, repeats: true)
            timerRunning = true
        }
        
    }
    
    func updateClock() -> Void {
        let (hours, minutes, seconds) = secondsBrokenOut()
        count += 1
        counter.text = "\(hours):\(minutes):\(seconds)"
    }
    
    func secondsBrokenOut() -> (Int, Int, Int) {
        return (count / 3600, (count % 3600) / 60, (count % 3600) % 60)
    }


}

