//
//  HomePageViewController.swift
//  ViewFinderProjectDay6
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
var plantCount = 0
class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        plantCount = 0
        // Do any additional setup after loading the view.
    }
    
//    override func viewDidAppear(_ animated: Bool) {
////        if (plantCount == 1) {
////            plantStage.image = UIImage(named:"stage2")
////        }
////
////        if plantCount == 2 {
////            plantStage.image = UIImage(named:"stage3")
////        }
////    }
//
//        switch plantCount {
//        case 1  :
//            plantStage.image = UIImage(named:"stage2")
//        case 2  :
//            plantStage.image = UIImage(named:"stage3")
//        case 3  :
//            plantStage.image = UIImage(named:"stage4")
//        case 4  :
//            plantStage.image = UIImage(named:"stage5")
//       // case 5  :
//       //     plantStage.image = UIImage(named:"stage3")
//       // default :
//       //     plantStage.image = UIImage(named:"stage3")
//        }
    
    @IBOutlet weak var plantStage: UIImageView!
    
        
        override func viewDidAppear(_ animated: Bool) {
            //        if (plantCount == 1) {
            //            plantStage.image = UIImage(named:"stage2")
            //        }
            //
            //        if plantCount == 2 {
            //            plantStage.image = UIImage(named:"stage3")
            //        }
            //    }
            
            switch plantCount {
            case 0  :
                plantStage.image = UIImage(named:"stage1")
            case 1  :
                plantStage.image = UIImage(named:"stage2")
            case 2  :
                plantStage.image = UIImage(named:"stage3")
            case 3  :
                plantStage.image = UIImage(named:"stage4")
            case 4  :
                plantStage.image = UIImage(named:"stage5")
                // case 5  :
                //     plantStage.image = UIImage(named:"stage3")
            default :
                    plantStage.image = UIImage(named:"stage1")
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
}
