//
//  RecipeSearchTableViewController.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/26.
//

import UIKit
import Foundation

class RecipeSearchTableViewController: UITableViewController, UISearchBarDelegate {
    @IBOutlet weak var Searchbar: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Searchbar.delegate = self
        
//        filterRecipes = RecipeInfo
    }
    
    var searchRecipeInfo = [RecipeInfo]()

    
    
    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchRecipeInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let info = recipes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: recipes[indexPath.row].thumbnail)
        let label = cell.viewWithTag(2) as! UITextView
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"
        
        return cell
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
       guard !searchText.isEmpty else {
           searchRecipeInfo = recipes
           tableView.reloadData()
           return // When no items are typed, load your array still

       }
       searchRecipeInfo = recipes.filter({ (RecipeInfo) -> Bool in
           RecipeInfo.ingredients.contains(searchText)
    })
//       searchBar.setShowsCancelButton(true, animated: true)
//       searching = true
       tableView.reloadData()
    }

}
