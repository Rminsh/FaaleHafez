//
//  ViewControllerHelper.swift
//  faale hafez
//
//  Created by armin on 3/18/19.
//  Copyright © 2019 armin. All rights reserved.
//

import GameplayKit

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
