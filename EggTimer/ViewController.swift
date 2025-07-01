//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var hardnessButton: UIButton!
  @IBOutlet weak var titleLabel: UILabel!
  
  var timer = Timer()
  
  var eggTime = ["Soft": 3, "Medium": 5, "Hard": 7]
  var totalTime = 0
  var passedTime = 0
  
  @IBAction func hardnessSelected(_ sender: UIButton) {
    
    
  }
}
