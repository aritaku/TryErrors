//
//  ViewController.swift
//  errorSamples102
//
//  Created by 有村 琢磨 on 2015/06/08.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var number : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = String(number)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isAho() -> Bool {
        if number % 3 == 0 {
            return true
        } else {
            return false
        }
        
    }
    
    @IBAction func plus(sender: AnyObject) {
        
        number += 1
        
        if isAho() == true {
            label.text = "アホ\(number)"
        } else {
            label.text = String(number)
        }
    }
    
}