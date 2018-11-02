//
//  ViewController.swift
//  XXXX
//
//  Created by gyf on 2018/10/12.
//  Copyright © 2018年 GYF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var SZ3:String = ""
    var SZ2:String = ""
    var FH:String = ""

    var result:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func zz(_ sender: Any) {
        let buttonTitle:String = (sender as AnyObject).currentTitle!
        if buttonTitle == "+" || buttonTitle == "-" || buttonTitle == "*" || buttonTitle == "/" || buttonTitle == "%"
        {
            FH = buttonTitle
            return
        }
        else if buttonTitle == "="
        {    
            switch FH {
            case "+":
                result = Double(SZ3)! + Double(SZ2)!
            case "-":
                result = Double(SZ3)! - Double(SZ2)!
            case "*":
                result = Double(SZ3)! * Double(SZ2)!
            case "/":
                result = Double(SZ3)! / Double(SZ2)!
            case "%":
                result = Double(SZ3)!.truncatingRemainder(dividingBy: Double(SZ2)!)
            default:
                result = 0
            }
            resultLabel.text = "\(result)"
            return
        }
            resultLabel.text = "0"
        if FH == "" {
            SZ3 = SZ3 + buttonTitle
            resultLabel.text = SZ3
        }
        else{
            SZ2 = SZ2 + buttonTitle
            resultLabel.text = SZ2
        }
        return
    }
    @IBAction func WZ(_ sender: Any) {
        resultLabel.text =  " ？"
        SZ2 = ""
        SZ3 = ""
        FH = ""
    }
    @IBAction func C(_ sender: Any) {
        resultLabel.text =  "0"
        SZ2 = ""
        SZ3 = ""
        FH = ""
    }
}

