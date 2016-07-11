//
//  ViewController.swift
//  BillOrSteve
//
//  Created by James Campagno on 6/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var billOrSteveFacts : [String:[String]] = [:]
    
    @IBOutlet weak var randomFactLabel: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var steveJobsOutlet: UIButton!
    @IBOutlet weak var billGatesOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createFacts()
        getRandomFact()
        // add some code to the end of this method to initialize the app
    }
    
    
    func randomNumberFromZeroTo(number: Int) -> Int {
        return Int(arc4random_uniform(UInt32(number)))
    }
    
    func randomPerson() -> String {
        let randomNumber = arc4random_uniform(2)
        
        if randomNumber == 0 {
            return "Steve Jobs"
        } else {
            return "Bill Gates"
        }
    }
    
    func createFacts() {
        let steveJobsFacts = [
            
            "He took a calligraphy course, which he says was instrumental in the future company products' attention to typography and font.",
            "Shortly after being shooed out of his company, he applied to fly on the Space Shuttle as a civilian astronaut (he was rejected) and even considered starting a computer company in the Soviet Union.",
            "He actually served as a mentor for Google founders Sergey Brin and Larry Page, even sharing some of his advisers with the Google duo.",
            "He was a pescetarian, meaning he ate no meat except for fish."
        ]
    
        
        let billGatesFacts = [
        
            "He aimed to become a millionaire by the age of 30. However, he became a billionaire at 31.",
            "He scored 1590 (out of 1600) on his SATs.",
            "His foundation spends more on global health each year than the United Nation's World Health Organization.",
            "The private school he attended as a child was one of the only schools in the US with a computer. The first program he ever used was a tic-tac-toe game.",
            "In 1994, he was asked by a TV interviewer if he could jump over a chair from a standing position. He promptly took the challenge and leapt over the chair like a boss."
        
        ]
        
        billOrSteveFacts.updateValue(steveJobsFacts, forKey: "Steve Jobs")
        billOrSteveFacts.updateValue(billGatesFacts, forKey: "Bill Gates")
        
    }
    
    
    func getRandomFact() -> (String, String) {
        
        var person = randomPerson()
        
        var randomFact = ""
        
        if let person = billOrSteveFacts[person] {
            let numberOfFacts = person.count
            let randomFactToSelect = randomNumberFromZeroTo(numberOfFacts)
            randomFact = person[randomFactToSelect]
        } else {
            person = ""
        }
        
        return(person, randomFact)
    }
    
    @IBAction func steveJobsButtonTapped(sender: AnyObject) {
        
        if getRandomFact() ==
    }
    
    
    @IBAction func billGatesButtonTapped(sender: AnyObject) {
    }
    
}
