//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sarah on 9/11/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billValue: UITextField!
    
    @IBOutlet weak var tipSegmentValue: UISegmentedControl!
    
    
    @IBOutlet weak var customValue: UISlider!
    
    @IBOutlet weak var customValueTextField: UILabel!
    
    @IBOutlet weak var billTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }//end of viewDidLoad()
    
    //------------------------ Class Methods
    
    

    @IBAction func tipSelectedSegement(_ sender: UISegmentedControl) {
        
        let bill = Double(billValue.text!)
        
        
        if ((bill == nil) || (bill! <= 0)) {
            print("Error Handler- Bill total is NIL or NEGATIVE")
            
            //alert user that first name field is empty
            let alert = UIAlertController(title: "Error", message: "Bill total must be a positive value (example: 25.67)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }//end of if
        
        else {

            //now calculate the tip based on segment chosen
            if (self.tipSegmentValue.selectedSegmentIndex == 0 ) {
                //tip is 10%
                let tipPerc = 0.10
                self.billTotal.text = String(((tipPerc * bill!) + bill! ))
                print("Tip% is \(10)")
                
            }
            
            else if (self.tipSegmentValue.selectedSegmentIndex == 1) {
                 let tipPerc = 0.15
                self.billTotal.text = String(((tipPerc * bill!) + bill! ))

                 print("Tip% is \(15)")
            }
            
            else if (self.tipSegmentValue.selectedSegmentIndex == 2 ) {
                 let tipPerc = 0.18
                self.billTotal.text = String(((tipPerc * bill!) + bill!))

                 print("Tip% is \(18)")
            }
            
            else if (self.tipSegmentValue.selectedSegmentIndex == 3) {
                //self.billTotal.text = String((tipPerc * bill!))
                
                self.customValueTextField.text = String(customValue!.value)
                
                
        
            }
            
            
        }
        
    }
    
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        self.customValueTextField.text = String(customValue!.value)

    }
    /*
        let currentValue = Int(sender.value)
        
        self.customValueTextField.text = "\(currentValue)"
    
    */
  
   
    /*
    @IBAction func billTotalValueChanged(_ sender: UITextField) {
        //Check that bill total is positive & not nil
        
        //unwrap bill total user input field
        let billTotal = Double(billValue.text!)
        
        // Check that input is numerical and is a positive val
        if (billTotal! <= 0) {
            //alert user that bill value is not a positive value
            let alert = UIAlertController(title: "Error", message: "Bill Total Must Be A Positive Number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }//end of if
        
        if (billTotal == nil) {
            //alert user that first name field is empty
            let alert = UIAlertController(title: "Error", message: "Input Bill Total", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        print("User successfully entered Bill Total")
        
    }
    
    */

    
    //Slider Control Logic
  
    
    
    
}

