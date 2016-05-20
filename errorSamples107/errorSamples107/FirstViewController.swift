//
//  FirstViewController.swift
//  errorSamples107
//
//  Created by 有村 琢磨 on 2015/06/12.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView : UITableView!
    var indexNumber :Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        indexNumber = indexPath.row
        return cell
    }
    
    //MARK: Delegate
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toSecondview") {
            let secondView :SecondViewController = segue.destinationViewController as! SecondViewController
            
            secondView.indexNumber = self.indexNumber
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("toSecondView", sender: nil)
    }
}
