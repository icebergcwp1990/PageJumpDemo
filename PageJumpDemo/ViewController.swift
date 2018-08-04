//
//  ViewController.swift
//  PageJumpDemo
//
//  Created by iceberg on 2018/8/4.
//  Copyright © 2018年 industiousonesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aNewViewCtrl: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //only assign a new value to aNewViewCtrl once.
        if aNewViewCtrl == nil && segue.identifier == "JumpToVCSegueID_2" {
            aNewViewCtrl = segue.destination;
        }
    }
    
    @IBAction func jumpButton2DidClicked(sender: AnyObject) {
        
        self.performSegue(withIdentifier: "JumpToVCSegueID_2", sender: sender);
        print("2--Jump to new view...");
    }
    
    
    @IBAction func jumpButton3DidClicked(sender: AnyObject) {
        if aNewViewCtrl != nil {
            self.present(aNewViewCtrl, animated: true) {
                print("3--Jump to new view...");
            };
        }else {
            self.jumpButton2DidClicked(sender: sender);
        }
        
    }


}

