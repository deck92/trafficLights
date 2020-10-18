//
//  ViewController.swift
//  trafficLights
//
//  Created by Macbook on 14.10.2020.
//  Copyright © 2020 tt. All rights reserved.
//

import UIKit

enum CurrentLights {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColorLabel: UIView!
    @IBOutlet var yellowColorLabel: UIView!
    @IBOutlet var greenColorLabel: UIView!
    @IBOutlet var toggleTextButton: UIButton!
    
    private var currentLights = CurrentLights.red
    private let lightsIsOn: CGFloat = 1
    private let lightsIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleTextButton.layer.cornerRadius = 10
        redColorLabel.alpha = lightsIsOff
        yellowColorLabel.alpha = lightsIsOff
        greenColorLabel.alpha = lightsIsOff
        viewWillLayoutSubviews()
    }
    
    override func viewWillLayoutSubviews() {
        redColorLabel.layer.cornerRadius = redColorLabel.frame.width / 2
        yellowColorLabel.layer.cornerRadius = yellowColorLabel.frame.width / 2
        greenColorLabel.layer.cornerRadius = greenColorLabel.frame.width / 2
    }

    @IBAction func toggleButtonPressed() {
        toggleTextButton.setTitle("Next", for: .normal)
        switch currentLights {
        case .red:
            currentLights = .yellow
            redColorLabel.alpha = lightsIsOn
            greenColorLabel.alpha = lightsIsOff
        case .yellow:
            currentLights = .green
            redColorLabel.alpha = lightsIsOff
            yellowColorLabel.alpha = lightsIsOn
        case .green:
            currentLights = .red
            yellowColorLabel.alpha = lightsIsOff
            greenColorLabel.alpha = lightsIsOn
        }
        
    }
    
}

