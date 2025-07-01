//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var eggTime = ["Soft": 5, "Medium": 7, "Hard": 12]
  var totalTime: Float = 0.0
  var progressTime: Float = 0.0
  
  @IBOutlet weak var progressBar: UIProgressView!
  
  @IBOutlet weak var hardnessButton: UIButton!
  
  @IBAction func hardnessSelected(_ sender: UIButton) {
    guard let eggText = sender.titleLabel?.text else { return }
    guard let totalTime = eggTime[sender.currentTitle!] else { return }
    
    //self.progressBar.progress = Float(totalTime)
    self.progressBar.progress = 1.0
    
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
      self.progressTime += 1.0 / Float(totalTime)
      
      if self.progressTime <= 1.0 {
        print(self.progressTime)
        print(totalTime)
        
        self.progressBar.progress = 1.0 - Float(self.progressTime)
      }
    }
  }
}
