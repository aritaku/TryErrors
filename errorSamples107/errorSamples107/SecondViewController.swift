//
//  SecondViewController.swift
//  errorSamples107
//
//  Created by 有村 琢磨 on 2015/06/12.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var indexNumberLabel: UILabel!
    
    var indexNumber :Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        indexNumberLabel.text = "\(indexNumber)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
