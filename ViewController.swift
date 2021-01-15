//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Refat Monjur on 1/13/21.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        billAmountTextField.becomeFirstResponder()
 //       super.viewDidLoad()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Show keyboard by default
        billAmountTextField.becomeFirstResponder()
    
    //billAmountTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBOutlet weak var currencysign: UILabel!
    @IBOutlet weak var currencysign2: UILabel!
    @IBOutlet weak var currencysign3: UILabel!
    @IBOutlet weak var currencycontrol: UISegmentedControl!

    
    
    
    @IBAction func changecurrency(_ sender: UISegmentedControl)
    {
        switch currencycontrol.selectedSegmentIndex {
        case 0:
        currencysign.text = "$";
        currencysign2.text = "$";
        currencysign3.text = "$";
            
        case 1:
        currencysign.text = "€";
        currencysign2.text = "€";
        currencysign3.text = "€";
            
        case 2:
        currencysign.text = "£";
        currencysign2.text = "£";
        currencysign3.text = "£";
            
        case 3:
        currencysign.text = "$";
        currencysign2.text = "$";
        currencysign3.text = "$";
            
        case 4:
        currencysign.text = "¥";
        currencysign2.text = "¥";
        currencysign3.text = "¥";
            
        default:

        break;

        }

        }
    @IBAction func calculateTip(_ sender: Any) {
        
        
    // Get initial bill amount and calculate the tip
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.20, 0.25, 0.30]
        
        // Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        
        tipPercentageLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }
}

