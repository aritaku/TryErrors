//
//  ViewController.swift
//  errorSample101
//
//  Created by 有村琢磨 on 2016/05/27.
//  Copyright © 2016年 有村琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet dynamic private var Labe1: UILabel!
    private var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(number)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        number += 1
        label.text = String(number)
    }
}
