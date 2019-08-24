//
//  ViewControllerHelper.swift
//  faale hafez
//
//  Created by armin on 3/18/19.
//  Copyright © 2019 armin. All rights reserved.
//

import GameplayKit
import UIKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 495)

func randomFaal() -> Int {
    let faal = randomChoice.nextInt()
    return faal
}

func convertEngNumToPersianNum(num: String)->String{
    let number = NSNumber(value: Int(num)!)
    let format = NumberFormatter()
    format.locale = Locale(identifier: "fa_IR")
    let faNumber = format.string(from: number)
    
    return faNumber!
}

func shareText(text: String, viewController: UIViewController) {
    // set up activity view controller
    let textToShare = [text]
    let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
    activityViewController.popoverPresentationController?.sourceView = viewController.view // so that iPads won't crash
    
    // exclude some activity types from the list (optional)
    activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
    
    // present the view controller
    viewController.present(activityViewController, animated: true, completion: nil)
}
