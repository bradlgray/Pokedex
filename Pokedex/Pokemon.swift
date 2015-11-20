//
//  Pokemon.swift
//  Pokedex
//
//  Created by Brad Gray on 11/19/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation

class Pokemon {
    
    var _name: String!
    
    var _ID: Int!
    
  
    
    var name: String {
        get {
            return _name
        }
    }
    
    var ID: Int {
        get {
            return _ID
        }
    }
    
      
  
    init(name: String, ID: Int) {
         self._name = name
        self._ID = ID
    }
    



}
