//
//  GameViewController.swift
//  ViewFinderProjectDay6
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = [
        "🚘" : "Car",
        "✈️" : "Plane",
        "🍴🐮" : "Beef",
        "🛍" : "Shopping",
        "🇩🇪" : "Germany",
        "🇪🇸" : "Spain",
        "🚲" : "Bike",
        "🚗" : "Drive",
        "🎣" : "Fishing",
        "🥤" : "Plastic",
        "🐄" : "Cow",
        "🐑" : "Lamb",
    ]
    
    let emojis2 = [
        "🚘" : "Oops!",
        "✈️" : "Plane",
        "🍴🐮" : "Beef",
        "🛍" : "Oops!",
        "🇩🇪" : "Germany",
        "🇪🇸" : "Oops!",
        "🚲" : "Bike",
        "🚗" : "Oops!",
        "🎣" : "Fishing",
        "🥤" : "Oops!",
        "🐄" : "Oops!",
        "🐑" : "Lamb",
    ]
    
    
    
    var customMessages = [
      //  "Car" : "",
        //"Plane",
      //  "Beef",
      //  "Shopping",
     //   "Germany",
     //   "Spain",
    //    "Bike",
    //    "Drive",
       // "Fishing",
     //   "Plastic",
    //    "Cow",
    //    "Lamb" ,
    ]
    
    
    @IBAction func showMessage(sender: UIButton) {
        //the new screen needs to pop up
        // title should say : the flag is ....
        // can say did u guess correct
        let selectedEmoji = sender.titleLabel?.text
        let ecoMessage = customMessages[emojis[selectedEmoji!]!][0]
        
        let alertController = UIAlertController(title:emojis2[selectedEmoji], message: ecoMessage , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil ))
        
        present(alertController, animated: true , completion: nil )
    }
    
    
    
}


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
