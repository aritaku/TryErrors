//
//  ViewController.swift
//  errorSamples106
//
//  Created by 有村 琢磨 on 2015/06/09.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView : UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webview.delegate = self
        
        let url : NSURL = NSURL(string: "https://life-is-tech.com/")!
        let urlRequest :NSURLRequest = NSURLRequest(URL: url)
        webview.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func webViewDidFinishLoad(webView: UIWebView) {
        print("webViewDidFinishLoad")
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("webViewDidStartLoad")
    }


}

