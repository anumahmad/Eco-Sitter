//
//  GameViewController.swift
//  ViewFinderProjectDay6
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🚘" : "Drive",
                  "✈️" : "Fly",
                  "🎣" : "Fishing Net",
                  "🥤" : "Plastic",
                  "🐑" : "Lamb",
                  "🐄" : "Cow",
                  "🍴🐮" : "Beef",
                  "🛍" : "Shopping",
                  "🇩🇪" : "Germany",
                  "🇪🇸" : "Spain",
                  "🚲" : "Bike",
                  "🚗" : "Car"      ]
    let emojis2 = ["🚘" : "Oops!",
                   "✈️" : "Correct!",
                   "🎣" : "Correct!",
                   "🥤" : "Oops!",
                   "🐑" : "Correct!",
                   "🐄" : "Oops!",
                   "🍴🐮" : "Correct!",
                   "🛍" : "Oops!",
                   "🇩🇪" : "Correct!",
                   "🇪🇸" : "Oops!",
                   "🚲" : "Correct!",
                   "🚗" : "Oops!"]
    
    var customMessages = [
        "Drive" : "Traveling by car uses more than twice the amount of energy it takes to fly. Try again.",
        "Fly" : "Airlines are cutting the amount of expensive jet fuel they use, using newer planes with better engines.",
        "Fishing Net" : "640,000 tons of fishing gear are lost each year, polluting oceans, and allowing for sea animals to get caught in fishing nets. People can help by reducing their fish intake or boycotting commercial fishing.",
        "Plastic" : "About 0.03% of ocean plastic  is plastic straws (Humans should still be careful about using straws!) Try again.",
        "Lamb" : "Lamb emits 20.9 kg of carbon per 1,000 calories, so humans can reduce their carbon footprint, and slow global warming by changing the food that they eat.",
        "Cow" : "Beef emits 13.8 kg of carbon per 1,000 calories, meaning that humans should be mindful of their beef intake per week. Try again!",
        "Beef" : "Eating steak creates 0.8 metric tons of carbon, along with animal agriculture taking up forest space.",
        "Shopping" : "While unmindful shopping sprees create a lot of waste, creating 0.5 metric tons of carbon, it's not the most harmful consumer action. Try again!",
        "Germany" : "Because of climate change, Germany's heatwave has hit 104.9 F°. Heatwaves will begin to become more prevalent and intense in future years if climate change is not slowed.",
        "Spain" : "While Spain has not hit its highest temperature, it is under red alert. Try again!",
        "Bike" : "Ever since 1999, the business district of London has decreased its traffic by 40%, because of the fact that there are more bicycles than cars during rush hour.",
        "Car" : "Try again."
    ]
    
    //var customMessagesArray = [customMessages.keys]
    
    
    
    
    @IBAction func showMessage(sender: UIButton) {
        //the new screen needs to pop up
        // title should say : the flag is ....
        // can say did u guess correct
        let selectedEmoji = sender.titleLabel?.text
        //var number = Int.random(in: 0..<1)
        let ecoMessage = customMessages[emojis[selectedEmoji!]!]!
        let alertController = UIAlertController(title:emojis2[selectedEmoji!], message: ecoMessage , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil ))
        
        present(alertController, animated: true , completion: nil )
    }
    
    
    
    
    
}
