//
//  StausViewController.swift
//  CalculatorPlus
//
//  Created by UnciaX on 2015/10/19.
//  Copyright © 2015年 UnciaX. All rights reserved.
//

import UIKit

class StausViewController: UIViewController {

    @IBOutlet weak var lblMemory: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        if let prog = NSUserDefaults.standardUserDefaults().arrayForKey("history"){
            if(prog.count == 0){
                lblMemory.text = "The memory is empty."
            }else{
                lblMemory.text = "\(prog)"
            }
            
        }
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

