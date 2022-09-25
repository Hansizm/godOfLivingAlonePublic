//
//  RecipeButtonTableViewController-refrigerator.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/21.
//

import UIKit
import Foundation

class RecipeButtonTableViewController_refrigerator: UITableViewController {
    
    var recipesPicked:[RecipeInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipesPicked = recipes.filter{
            $0.methld8 != nil
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesPicked.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = recipesPicked[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: recipesPicked[indexPath.row].thumbnail)
//        imageView.image = UIImage(named: "sample-2")
        
        let label = cell.viewWithTag(2) as! UITextView
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let selectedCell = (sender as! UIButton).superview?.superview as! UICollectionViewCell
        let indexPath = tableView.indexPath(for: sender as! UITableViewCell)!
//        segue.identifier
//        segue.source
        let vcDest = segue.destination as! RecipeDetailCollectionViewController
        
        vcDest.recipe = recipes[indexPath.row]  // 선택한 레시피를 넣어준다.
        
    }
}
