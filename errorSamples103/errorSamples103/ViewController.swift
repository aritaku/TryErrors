//
//  ViewController.swift
//  errorSamples103
//
//  Created by 有村 琢磨 on 2015/06/12.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ituLabel: UILabel!
    @IBOutlet weak var dokodeLabel: UILabel!
    @IBOutlet weak var daregaLabel: UILabel!
    @IBOutlet weak var naniLabel: UILabel!
    
    var ituArray :[String] = ["1年前", "1週間前", "昨日"]
    var dokodeArray :[String] = ["オフィスで", "キャンプで", "学校で"]
    var daregaArray : [String] = ["うっちーが", "みやもが", "はるふが"]
    var naniArray : [String] = ["スプラトゥーンした", "ボルダリングした", "すべった"]
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(sender: AnyObject) {
        
        ituLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        naniLabel.text = naniArray[index]
        
        index += 1
        
        if index > 3 {
            index = 0
        }
    }

    @IBAction func reset(sender: AnyObject) {
        
        ituLabel.text = "____"
        dokodeLabel.text = "____"
        daregaLabel.text = "____"
        naniLabel.text = "____"
        
        index = 0
    }
    @IBAction func random(sender: AnyObject) {
        
        var ituIndex = Int(arc4random_uniform(4))
        var dokodeIndex = Int(arc4random_uniform(4))
        var daregaIndex = Int(arc4random_uniform(4))
        var naniIndex = Int(arc4random_uniform(4))
        
        NSLog("いつ:%d" , ituIndex)
        NSLog("どこで:%d" , dokodeIndex)
        NSLog("だれが:%d" , daregaIndex)
        NSLog("どうした:%d" , naniIndex)
        
        ituLabel.text = ituArray[ituIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        naniLabel.text = naniArray[naniIndex]

    }
    
}

