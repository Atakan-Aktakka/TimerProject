//
//  ViewController.swift
//  TimerProject
//
//  Created by Atakan Aktakka on 31.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      counter = 10
      timeLabel.text="Time:\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    /*
    override func viewDidAppear(_ animated: Bool) {
        counter=10
        for time in 1...10{
            counter=counter-1
            timeLabel.text="Time:\(counter)"
            Thread.sleep(forTimeInterval: 1)
        }
    }*/
    
    @objc func timerFunction(){
        timeLabel.text="Time:\(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Time is over"
        }
    }
    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
}

