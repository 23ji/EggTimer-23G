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
    guard let title = sender.currentTitle else { return }
    guard let time = self.eggTime[title] else { return }
    // 기존 : guard let totalTime = self.eggTime[title] else { return } -> 지역변수됨
    
    
    print("totalTime: \(totalTime)")
    // 초기화
    self.totalTime = time
    self.progressBar.progress = 0.0
    self.timer.invalidate() //?
    self.passedTime = 0
    self.titleLabel.text = "How do you like your eggs?"
    
    
    //타이머 가동
    self.timer = Timer.scheduledTimer(
      timeInterval: 1.0,
      target: self,
      selector: #selector(updateTimer),
      userInfo: nil,
      repeats: true)
  }
  
  @objc func updateTimer() {
    
    if self.passedTime <= self.totalTime {
      self.passedTime += 1

      self.progressBar.progress = Float(passedTime) / Float(totalTime)
      
      
      print(self.passedTime)
      print(self.progressBar.progress)
      
      if self.passedTime == self.totalTime {
        self.titleLabel.text = "Done!"
      }
    } else {
      self.timer.invalidate()
    }
  }
}
