//
//  ViewController.swift
//  TipCalculator
//
//  Created by Haley on 9/11/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    
    @IBOutlet weak var currentValueLabel: UILabel!
    
    @IBOutlet weak var billValue: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Checking user input \n line 26")
        //Check that bill total is positive
        let tempBillVal = self.billValue
        print("User input- Bill Value =\(tempBillVal)")
        
        if (tempBillVal < 0.0) {
            
        } else {
            
        }//end of else
        
        
    }//end of viewDidLoad()
    
    //------------------------ Class Methods
    
    //Segmented Control Logic
    @IBAction func segmentValChanged(_ sender: UISegmentedControl) {
        print("segmentValueChanged\(sender.selectedSegmentIndex)")
         // segmentedControl.addTarget(self, action: "action:", forControlEvents: .ValueChanged)
    }
    
    
    //Slider Control Logic
    
    @IBAction func onSliderValChanged(_ sender: UISlider) {
        print("current value is \(sender.value)")
        self.currentValueLabel.text = String(sender.value) + "%"
        
    }
    
    
    
}

