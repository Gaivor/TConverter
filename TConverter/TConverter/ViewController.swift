//
//  ViewController.swift
//  TConverter
//
//  Created by Илья Гайворонский on 09.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var fahrenheit: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelcius = Int(round(sender.value))
        celsius.text = "\(temperatureCelcius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheit.text = "\(temperatureFahrenheit)ºF"
        
    }
    
}

