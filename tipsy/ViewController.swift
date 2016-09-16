//
//  ViewController.swift
//  tipsy
//
//  Created by Aaron Bailey on 9/16/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    var enteringNumbers = false
    var bill = "0"
    var digit = "0"
    var total = "0"
    var tipVal = "0.15"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(sender: UIButton){
        
        let split = "1"
        let tip = sender.currentTitle!
        
        if tip == "1" || tip == "2" || tip == "3" || tip == "4"{
            print(tip)
            let split = tip
            print(split)
            let tip = String(Double(tipVal)! * 100)
            print(tip)
            let total = (Double(bill)! * Double(tipVal)! + Double(bill)!)/Double(split)!
            print(total)
            outputValue(bill: bill, tip: tip, split: split, total: total)
        } else {
            switch tip {
                case "12%": tipVal = "0.12"
                case "15%": tipVal = "0.15"
                case "18%": tipVal = "0.18"
                case "20%": tipVal = "0.2"
            default: break
            }
        
            let total = (Double(bill)! * Double(tipVal)! + Double(bill)!)/Double(split)!
            print(total)
            
            outputValue(bill: bill, tip: tip, split: split, total: total)
        }
    }
    
    func outputValue(bill: String, tip: String, split: String, total: Double){
        tipLabel.text = "$" + bill + " * " + tip + " / " + split
        print(total)
        print(String(format: "$%.2f", total))
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func enterNumber (sender: UIButton){
        let digit = sender.currentTitle!
        
        if enteringNumbers {
            bill = bill + digit
            tipLabel.text = "$" + bill
        } else {
            tipLabel.text = "$" + digit
            bill = digit
            enteringNumbers = true
        }
        
    }
    
    @IBAction func resetCalc (sender: UIButton){
        digit = "0"
        bill = "0"
        tipLabel.text = "$0"
        totalLabel.text = "$0"
        enteringNumbers = false
        tipVal = "0.15"
    }

}

