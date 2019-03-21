//
//  ViewController.swift
//  faale hafez
//
//  Created by armin on 8/6/18.
//  Copyright © 2018 armin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var shamseImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(checkAction))
        view.addGestureRecognizer(gesture)
        
        shamseImage.rotate360Degrees()
        
    }
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
}
