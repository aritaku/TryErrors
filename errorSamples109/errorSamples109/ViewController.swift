//
//  ViewController.swift
//  errorSamples109
//
//  Created by 有村 琢磨 on 2015/06/10.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var faceLabel: UILabel!
    var number : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

    func plus(sender: AnyObject) {
        number += 1
        numberLabel.text = String(number)
        if isAho() == true {
            faceLabel.text = "あほ"
        } else
            faceLabel.text = "普通"
        }
    }

}

