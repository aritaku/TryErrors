//
//  ViewController.swift
//  errorSamples105
//
//  Created by 有村 琢磨 on 2015/06/09.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource,  AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    @IBOutlet weak var clapPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundFilePath :NSString = NSBundle.mainBundle().pathForResource("clap", ofType: "wav")!
        let fileURL :NSURL = NSURL(fileURLWithPath: soundFilePath as String)
        
        audioPlayer = try? AVAudioPlayer(contentsOfURL: fileURL)
        
        clapPicker.delegate = self
        clapPicker.dataSource = self
        
        _ :Int = 0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - UIPickerViewDataSource method
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    //MARK: - UIPickerViewDelegate method
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row + 1)回"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        soundCount = row
    }

    //MARK: - Private method
    @IBAction func playButton() {
        audioPlayer.numberOfLoops = soundCount
        audioPlayer.play()
    }
    
    

}

