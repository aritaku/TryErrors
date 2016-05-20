//
//  ViewController.swift
//  errorSamples104
//
//  Created by 有村 琢磨 on 2015/06/12.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var count : Float = 0.0
    var timer : NSTimer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(sender: AnyObject) {
        if !timer.valid {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
                target: self,
                selector: Selector("up"),
                userInfo: nil,
                repeats: true)
    
        
    }

    func stop(sender: AnyObject) {
        if timer.valid {
    timer.invalidate()
    }
    
    
    func up(){
        count += 0.01
        numberLabel.text = String(format: "%.2f", count)
    }
}

