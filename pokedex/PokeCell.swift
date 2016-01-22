//
//  PokeCell.swift
//  pokedex
//
//  Created by Robert on 1/11/16.
//  Copyright © 2016 Robert Handy. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var pokeImg: UIImageView!
    @IBOutlet weak var pokeName: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        self.pokeName.text = self.pokemon.name.capitalizedString
        self.pokeImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
        layer.cornerRadius = 15
    }
    
}
