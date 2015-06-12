//
//  ViewController.swift
//  errorSamples110
//
//  Created by 有村 琢磨 on 2015/06/10.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    @IBOutlet var countLabel: UITextView!
    
    var password : Int = 1234
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        label1.text = "?"
        label2.text = "?"
        label3.text = "?"
        label4.text = "?"
        
        countLabel.text = "0"
    }
    
    @IBAction func button(sender: AnyObject) {
        
        // 0 - 9999までのループ
        for i in 0 ..< 10000{
            //countLabelにカウント中の文字を表示する
            countLabel.text = String(i)
            
            //カウントが一瞬で終わらないように処理を遅延させている
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.0005))
            
            if i == password {
                var digits = [Int]()
                for j in 0 ..< 4 {
                    digits.append(password % 10)
                    password /= 10
                }
                
                label1.text = String(digits[0])
                label2.text = String(digits[1])
                label3.text = String(digits[2])
                label4.text = String(digits[3])
                
            }
        }
        
    }
    

}

