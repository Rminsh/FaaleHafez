//
//  ResultVC.swift
//  faale hafez
//
//  Created by armin on 8/6/18.
//  Copyright © 2018 armin. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    var items = [FaalModel]()
    @IBOutlet weak var faalTitle: UILabel!
    @IBOutlet weak var faalPoem: UILabel!
    @IBOutlet weak var faalInterpretation: UILabel!
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sharePressed(_ sender: Any) {
        let poemDetail = "\(faalTitle.text ?? "")\n\n\(faalPoem.text ?? "")\n\n\(faalInterpretation.text ?? "")"
        shareText(text: poemDetail, viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadJson(filename: "faal")
        let userRandom = randomFaal()
        let _faal = items [userRandom]
        faalTitle.text = " غزل شماره" + convertEngNumToPersianNum(num: _faal.id)
        
        let faalPoemTitle = _faal.poem.replacingOccurrences(of: "\\r\\n", with: "\r\n")
        faalPoem.text = faalPoemTitle
        
        let text: NSMutableAttributedString = NSMutableAttributedString(string: _faal.interpretation + "\n")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        paragraphStyle.baseWritingDirection = .rightToLeft
        paragraphStyle.lineBreakMode = .byWordWrapping
        text.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, text.length))
        faalInterpretation.attributedText = text
        
    }
    
    func loadJson(filename fileName: String){
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.self, from: data)
                for faal in jsonData.faals {
                    self.items.append(FaalModel(id: faal.id , poem: faal.Poem , interpretation: faal.Interpretation))
                }
            } catch {
                print("error:\(error)")
            }
        }
    }
    
}
