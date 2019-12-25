//
//  ViewController.swift
//  TippingCalculator
//
//  Created by Mohammed Mogasbe on 12/23/19.
//  Copyright © 2019 Mohammed Mogasbe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the Bill Amount
        let billAmount = Double(bill.text!) ?? 0;// default if not valid == 0
        //Get the total and tip
        let tipPercentages = [0.15, 0.18,0.2]
        let tipAmount = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let totalAmount = billAmount + tipAmount
        //update everything
        tip.text = String(format: "$%.2f", tipAmount);
        total.text = String(format: "$%.2f", totalAmount);
    }
    
}

