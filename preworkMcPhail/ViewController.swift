//
//  ViewController.swift
//  preworkMcPhail
//
//  Created by William McPhail on 1/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    var defaultTipOne: Float!
    var defaultTipTwo: Float!
    var defaultTipThree: Float!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        defaultTipOne = defaults.float(forKey: "defaultTip1") ?? 0.15
        defaultTipTwo = defaults.float(forKey: "defaultTip2") ?? 0.18
        defaultTipThree = defaults.float(forKey: "defaultTip3") ?? 0.20
    }

        
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        tipControl.setTitle(String(defaultTipOne * 100) + "%", forSegmentAt: 0)
        tipControl.setTitle(String(defaultTipTwo * 100) + "%", forSegmentAt: 1)
        tipControl.setTitle(String(defaultTipThree * 100) + "%", forSegmentAt: 2)
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [defaultTipOne, defaultTipTwo, defaultTipThree]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

