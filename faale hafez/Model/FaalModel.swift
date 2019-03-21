//
//  FaalModel.swift
//  faale hafez
//
//  Created by armin on 3/16/19.
//  Copyright © 2019 armin. All rights reserved.
//

import Foundation

class FaalModel {
    private var _id: String!
    private var _poem: String!
    private var _interpretation: String!
    
    var id : String {
        return _id
    }
    
    var poem : String {
        return _poem
    }
    
    var interpretation : String {
        return _interpretation
    }
    
    init(id: String , poem: String , interpretation: String) {
        _id = id
        _poem = poem
        _interpretation = interpretation
    }
}
