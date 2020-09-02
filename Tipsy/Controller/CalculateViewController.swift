//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var tipPercent = 0.0
    var numPeople = 2
    var totalPp = "0"
    var tipString = "0%"

    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumLabel: UILabel!
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.resignFirstResponder()
        let btnPressed = sender.currentTitle
        tipString = btnPressed!
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
        billTextField.resignFirstResponder()
        numPeople = Int(sender.value)
        splitNumLabel.text = String(numPeople)
    }
    
    @IBAction func calcPressed(_ sender: UIButton) {
        if let total = billTextField.text {
            let tip = Double(total)! * tipPercent
            let split = ( Double(total)! + tip ) / Double(numPeople)
            totalPp = String(format: "%.2f", split)
        }
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalPp = totalPp
            destinationVC.numPeople = String(numPeople)
            destinationVC.tip = String(tipString)
        }
    }


}

