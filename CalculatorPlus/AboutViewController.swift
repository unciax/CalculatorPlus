//
//  AboutViewController.swift
//  CalculatorPlus
//
//  Created by UnciaX on 2015/10/19.
//  Copyright © 2015年 UnciaX. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBAction func viewOnGithub() {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://github.com/unciax/CalculatorPlus")!)
    }
    
    @IBAction func viewHelp() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://mlf.twbbs.org/work/calculatorPlus/")!)
    }
    @IBOutlet weak var lblVersion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let version = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String {
            lblVersion.text = "ver. " + version
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

