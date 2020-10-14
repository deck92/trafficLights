//
//  ViewController.swift
//  trafficLights
//
//  Created by Macbook on 14.10.2020.
//  Copyright © 2020 tt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorLabel: UIView!
    @IBOutlet var yellowColorLabel: UIView!
    @IBOutlet var greenColorLabel: UIView!
    @IBOutlet var toggleTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorLabel.layer.cornerRadius = 50
        yellowColorLabel.layer.cornerRadius = 50
        greenColorLabel.layer.cornerRadius = 50
        toggleTextButton.layer.cornerRadius = 10
        redColorLabel.alpha = 0.3
        yellowColorLabel.alpha = 0.3
        greenColorLabel.alpha = 0.3
    }

    @IBAction func toggleButtonPressed() {
        let nameButton = "Next"
        if round(100 * yellowColorLabel.alpha) / 100 == 0.3, redColorLabel.alpha == 1 {
            yellowColorLabel.alpha = 1
            redColorLabel.alpha = 0.3
            toggleTextButton.setTitle(nameButton, for: .normal)
        } else if round(100 * greenColorLabel.alpha) / 100 == 0.3, yellowColorLabel.alpha == 1 {
            greenColorLabel.alpha = 1
            yellowColorLabel.alpha = 0.3
            toggleTextButton.setTitle(nameButton, for: .normal)
        } else {
            redColorLabel.alpha = 1
            greenColorLabel.alpha = 0.3
            toggleTextButton.setTitle(nameButton, for: .normal)
        }
    }
    
}

