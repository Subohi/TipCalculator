//
//  ViewController.swift
//  Calculator
//
//  Created by Subohi Agarwal on 10/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
      // GET THE BILL
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
      // CALCULATE THE TIP AND TOTAL
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
      // UPDATE THE TIP AND TOTAL
        
        tipPercentageLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

