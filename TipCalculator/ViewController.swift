//
//  ViewController.swift
//  TipCalculator
//
//  Created by Haley on 9/11/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var currentValueLabel: UILabel!
    
  

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

