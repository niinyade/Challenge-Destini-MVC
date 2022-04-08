//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let stories = [[ "You see a fork in the road.", "Take a left", "Take a right"],
                   ["You see a tiger","Shout for help","Play dead"],
                   ["You find a treasure chest", "Open it", "Check for traps"]]
    
    var line = 0
    
    // var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[line][0]
        choice1Button.setTitle(stories[line][1], for: .normal)
        choice2Button.setTitle(stories[line][2], for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle
        
        if userChoice == stories[line][1] {
            line += 1
            updateUI()
        } else {
            line += 2
            updateUI()
        }
    }
    
    func updateUI(){
        storyLabel.text = stories[line][0]
        choice1Button.setTitle(stories[line][1], for: .normal)
        choice2Button.setTitle(stories[line][2], for: .normal)
    }
    
}

