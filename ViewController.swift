//
//  ViewController.swift
//  pokedesk
//
//  Created by ozan aydogdu on 12.04.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var myPokemon = [Pokemon]()
    var chosenPokemon : Pokemon?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let pikachu = Pokemon(pokemonName: "pikachu", pokemonGroup:"Elektrik", pokemonImage:UIImage(named:"pikachu")!)
        let charmender = Pokemon(pokemonName: "charmender", pokemonGroup:"Ateş", pokemonImage: UIImage(named:"charmender")!)
        
        let bulbasaur = Pokemon(pokemonName: "bulbasaur", pokemonGroup:"Çimen", pokemonImage: UIImage(named:"bulbasaur")!)
        
        let squirtle = Pokemon(pokemonName: "squirtle", pokemonGroup:"Su", pokemonImage: UIImage(named:"squirtle")!)
    
        myPokemon.append(pikachu)
        myPokemon.append(charmender)
        myPokemon.append(bulbasaur)
        myPokemon.append(squirtle)
        
        
        
    
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myPokemon[indexPath.row].name
    return cell
    }
    
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        chosenPokemon = myPokemon[indexPath.row]
        
        self.performSegue(withIdentifier:"toDetailsVC", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailVC
            destinationVC.selectedPokemon = chosenPokemon
        }
    }
    

}

