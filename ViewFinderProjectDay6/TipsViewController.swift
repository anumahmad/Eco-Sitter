//
//  TipsViewController.swift
//  ViewFinderProjectDay6
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

import UIKit

class TipsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let tipType = ["random ideas!" : "random ideas!", "ways to use less electricity!" : "ways to use less electricity!", "ways to use less waste!" : "ways to use less waste!", "activities!" : "activities!"]
    var customTips = [
        "random ideas!": ["Recycle your clothes. Each year, an average American discards 80 pounds of clothing. This contributes to fast fashion. Companies such as Patagonia will purchase and resell gently worn clothing.", "Make an effort to walk instead of taking your car, or dedicate one day of the week to walk. You can also take public transit, ride a bike, or carpool!", "Listen to a climate podcast to educate yourself, such as Warm Regards, or read a book to learn more about climate change and get involved. (Merchants of Doubt, or Heat: How to Stop the Planet From Burning are great books!"],
        
        "ways to use less electricity!" : [ "Unplug your electronics when you’re not using them! Even if you’re not using them, they still eat up electricity, including fans, microwaves, etc." , "J2. Wash your clothes with cold water! 90% of the energy in the washer is used to heat the water. In addition, don’t overload or put your washer through more work than it has to.", "3. Make sure to load your dishwasher only if its full loaded. Also, try to air-dry your dishes if possible, and don’t overload!" ],
        
        "ways to use less waste!" : ["Reduce! Reuse! Recycle!", "Purchase groceries from local farmer's markets!", "Avoid using plastic bags when shopping!" ],
        "activities!" : ["Try to start a backyard garden or plant a tree!", "Clean up the local park or lake!","Create your own cleansers for your home that are natural and chemical free"]
    ]
    
        
        
        
    
    @IBAction func showTip(sender: UIButton) {
        //the new screen needs to pop up
        // title should say : the flag is ....
        // can say did u guess correct
        let selectedtipType = sender.titleLabel?.text
        var number = Int.random(in: 0 ... 2)
        let TipMessage = customTips[tipType[selectedtipType!]!]![number]
        
        
        let alertController = UIAlertController(title: "\(tipType[selectedtipType!]!)" , message: TipMessage , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil ))
        
        present(alertController, animated: true , completion: nil )
    }
    
    
    
}
