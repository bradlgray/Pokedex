//
//  pokemonDetailsVC.swift
//  Pokedex
//
//  Created by Brad Gray on 11/19/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit


class pokemonDetailsVC: UIViewController {
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var pokeImg: UIImageView!
    @IBOutlet weak var pokeTextDesc: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var defense: UILabel!
    @IBOutlet weak var ID: UILabel!
    @IBOutlet weak var attack: UILabel!
    @IBOutlet weak var nextEvoText: UILabel!
    @IBOutlet weak var currentEvo: UIImageView!
    @IBOutlet weak var nextEvo: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        pokeImg.image = UIImage(named: "\(pokemon.ID)")
        
        pokemon.downloadedPokemonDetails { () -> () in
            //this will be called after downloading is done. If not called program will crash.
           self.downloadPokemonDetails()
        }
           }

    func downloadPokemonDetails() {
        pokeTextDesc.text = pokemon.description
        type.text = pokemon.type
        height.text = pokemon.height
        weight.text = pokemon.weight
        defense.text = pokemon.defense
        ID.text = "\(pokemon.ID)"
        attack.text = pokemon.attack
        
        currentEvo.image = UIImage(named: "\(pokemon.ID)")
        if pokemon.nextEvolutionId == "" {
            nextEvoText.text = "No Evolution"
            nextEvo.hidden = true
        } else {
            nextEvo.hidden = false
            nextEvo.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution is: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLvl != "" {
              str += "LVL \(pokemon.nextEvolutionLvl)"
                nextEvoText.text = "\(str)"
                
            }

        }
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
