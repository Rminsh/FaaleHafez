//
//  FaalStruct.swift
//  faale hafez
//
//  Created by armin on 3/18/19.
//  Copyright © 2019 armin. All rights reserved.
//

import Foundation

struct ResponseData: Decodable {
    var faals: [Faal]
}

struct Faal : Decodable {
    var id: String
    var Poem: String
    var Interpretation: String
}
