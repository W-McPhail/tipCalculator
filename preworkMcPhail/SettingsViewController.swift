//
//  SettingsViewController.swift
//  preworkMcPhail
//
//  Created by William McPhail on 1/17/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip1: UITextField!

    @IBOutlet weak var defaultTip2: UITextField!
    
    @IBOutlet weak var defaultTip3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveSettings(_ sender: Any) {
        let defaults = UserDefaults.standard
        let defaultTipOne = Double(defaultTip1.text!) ?? 0
        let defaultTipTwo = Double(defaultTip2.text!) ?? 0
        let defaultTipThree = Double(defaultTip3.text!) ?? 0
        
        defaults.set(defaultTipOne, forKey: "defaultTip1")
        defaults.set(defaultTipTwo, forKey: "defaultTip2")
        defaults.set(defaultTipThree, forKey: "defaultTip3")

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
