//
//  detailVC.swift
//  pokedesk
//
//  Created by ozan aydogdu on 12.04.2021.
//

import UIKit

class detailVC: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    
    
    var selectedPokemon : Pokemon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = selectedPokemon?.name
        groupLabel.text = selectedPokemon?.group
        imageView.image = selectedPokemon?.image

        
        
        
        
    }
    

    
    
    

}
