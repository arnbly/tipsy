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
    @IBOutlet weak var fourTip: UIButton!
    @IBOutlet weak var threeTip: UIButton!
    @IBOutlet weak var twoTip: UIButton!
    @IBOutlet weak var oneTip: UIButton!
    @IBOutlet weak var tip12Btn: UIButton!
    @IBOutlet weak var tip15Btn: UIButton!
    @IBOutlet weak var tip18Btn: UIButton!
    @IBOutlet weak var tip20Btn: UIButton!
    @IBOutlet weak var decimalBtn: UIButton!
    
    var bill = "0"
    var digit = "0"
    var total = "0"
    var tipVal = "0.15"
    var split = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(sender: UIButton){
        let tip = sender.currentTitle!
        
        if tip == "1" || tip == "2" || tip == "3" || tip == "4"{
            switch tip {
                case "1":
                    split = "1"
                    imageReset()
                    let image = UIImage(named: "1person - Select.png") as UIImage!
                    self.oneTip.setImage(image, for: .normal)
                case "2":
                    split = "2"
                    imageReset()
                    let image = UIImage(named: "2people - Select.png") as UIImage!
                    self.twoTip.setImage(image, for: .normal)
                case "3":
                    split = "3"
                    imageReset()
                    let image = UIImage(named: "3people - Select.png") as UIImage!
                    self.threeTip.setImage(image, for: .normal)
                case "4":
                    split = "4"
                    imageReset()
                    let image = UIImage(named: "4people - Select.png") as UIImage!
                    self.fourTip.setImage(image, for: .normal)
                default: break
            }

            let tip = String(format: "%.0f", Double(tipVal)! * 100) + "%"
            let total = (Double(bill)! * Double(tipVal)! + Double(bill)!)/Double(split)!

            outputValue(bill: bill, tip: tip, split: split, total: total)
            
        } else {
            switch tip {
                case "12%":
                    tipVal = "0.12"
                    buttonReset()
                    tip12Btn.setTitleColor(UIColor(red:0.33, green:1.00, blue:0.85, alpha:1.0), for: UIControlState.normal)
                case "15%":
                    tipVal = "0.15"
                    buttonReset()
                    tip15Btn.setTitleColor(UIColor(red:0.33, green:1.00, blue:0.85, alpha:1.0), for: UIControlState.normal)
                case "18%":
                    tipVal = "0.18"
                    buttonReset()
                    tip18Btn.setTitleColor(UIColor(red:0.33, green:1.00, blue:0.85, alpha:1.0), for: UIControlState.normal)
                case "20%":
                    tipVal = "0.2"
                    buttonReset()
                    tip20Btn.setTitleColor(UIColor(red:0.33, green:1.00, blue:0.85, alpha:1.0), for: UIControlState.normal)
            default: break
            }
        
            let total = (Double(bill)! * Double(tipVal)! + Double(bill)!)/Double(split)!

            outputValue(bill: bill, tip: tip, split: split, total: total)
        }
    }
    
    //Function to spit out currently stored values to viewer
    func outputValue(bill: String, tip: String, split: String, total: Double){
        tipLabel.text = "$" + bill + " * " + tip + " / " + split
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    //Resets Split People buttons to base color state
    func imageReset(){
        var image = UIImage(named: "1person.png") as UIImage!
        self.oneTip.setImage(image, for: .normal)
        image = UIImage(named: "2people.png") as UIImage!
        self.twoTip.setImage(image, for: .normal)
        image = UIImage(named: "3people.png") as UIImage!
        self.threeTip.setImage(image, for: .normal)
        image = UIImage(named: "4people.png") as UIImage!
        self.fourTip.setImage(image, for: .normal)
    }
    
    //Resets Tip % Buttons to base color state
    func buttonReset(){
        tip12Btn.setTitleColor(UIColor(red:0.48, green:0.69, blue:1.00, alpha:1.0), for: UIControlState.normal)
        tip15Btn.setTitleColor(UIColor(red:0.48, green:0.69, blue:1.00, alpha:1.0), for: UIControlState.normal)
        tip18Btn.setTitleColor(UIColor(red:0.48, green:0.69, blue:1.00, alpha:1.0), for: UIControlState.normal)
        tip20Btn.setTitleColor(UIColor(red:0.48, green:0.69, blue:1.00, alpha:1.0), for: UIControlState.normal)
    }
    
    //Appends numbers to the output calc string to build a number
    @IBAction func enterNumber (sender: UIButton){
        let digit = sender.currentTitle!
        
        //Sets bill to the first number pressed and removes the 0
        if bill == "0" {
            bill = digit
        } else {
            bill = bill + digit
        }
        
        if digit == "."{
            decimalBtn.isEnabled = false
        }
        
        let tip = String(format: "%.0f", Double(tipVal)! * 100) + "%"
        let total = (Double(bill)! * Double(tipVal)! + Double(bill)!)/Double(split)!
        
        tipLabel.text = "$" + bill
            
        outputValue(bill: bill, tip: tip, split: split, total: total)
    }
    
    //Supports the clear function to reset all values to default
    @IBAction func resetCalc (sender: UIButton){
        digit = "0"
        bill = "0"
        tipLabel.text = "$0"
        totalLabel.text = "$0"
        split = "1"
        tipVal = "0.15"
        
        //Sets split button back to 1
        imageReset()
        let image = UIImage(named: "1person - Select.png") as UIImage!
        self.oneTip.setImage(image, for: .normal)
        
        //Sets tip % to selected
        buttonReset()
        tip15Btn.setTitleColor(UIColor(red:0.33, green:1.00, blue:0.85, alpha:1.0), for: UIControlState.normal)
        
        //Enables decimal button again
        decimalBtn.isEnabled = true
    }

}

