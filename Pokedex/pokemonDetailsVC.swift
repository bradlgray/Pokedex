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
    override func viewDidLoad() {
        super.viewDidLoad()

       fakeData.text = pokemon.name
    
    }

    @IBOutlet weak var fakeData: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
