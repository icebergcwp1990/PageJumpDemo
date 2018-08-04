//
//  DetailViewController.swift
//  PageJumpDemo
//
//  Created by iceberg on 2018/8/4.
//  Copyright © 2018年 industiousonesoft. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var repeatAccessCountLabel: UILabel!
    
    var repeatAccessCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        repeatAccessCount = 0;
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        repeatAccessCount += 1
        repeatAccessCountLabel.text = "\(repeatAccessCount)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissButtonDidClicked(sender: AnyObject) {
        self.dismiss(animated: true) { 
            print("Dismissed...")
        };
    }

}
