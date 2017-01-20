//
//  ViewController.swift
//  tippy
//
//  Created by sshah31 on 1/19/17.
//  Copyright © 2017 sshah31. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var tipChange: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.20, 0.25]
        let tip = bill * tipPercentages[tipChange.selectedSegmentIndex]
        tiplabel.text = String(format: "$%.2f", tip)
        let total = tip + bill
        
        totalLabel.text = String(format: "$%.2f", total)
    }
   
}

