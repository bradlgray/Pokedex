//
//  PokeCellVC.swift
//  Pokedex
//
//  Created by Brad Gray on 11/19/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var PokeTitle: UILabel!
    @IBOutlet weak var PokeImg: UIImageView!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        PokeTitle.text = self.pokemon.name.capitalizedString
        PokeImg.image = UIImage(named: "\(self.pokemon.ID)")
    }
}
