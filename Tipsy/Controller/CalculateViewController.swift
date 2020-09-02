//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var tipPercent: Float = 0.0

    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumLabel: UILabel!
    @IBAction func tipChanged(_ sender: UIButton) {
        
        let btnPressed = sender.currentTitle
        if btnPressed == "0%" {
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            zeroPctButton.isSelected = true
            tipPercent = 0.0
        } else if btnPressed == "10%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tipPercent = 0.1
        } else {
            twentyPctButton.isSelected = true
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
            tipPercent = 0.2
        }
    }
    @IBAction func stepValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calcPressed(_ sender: UIButton) {
        print( String(tipPercent))
    }


}

