//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Christina Labay on 9/2/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var totalPp = "0"
    var numPeople = "2"
    var tip = "0"
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = totalPp
        let deets = "Split between " + numPeople + " people, with " + tip + " tip"
        settingsLabel.text = deets
    }

}
