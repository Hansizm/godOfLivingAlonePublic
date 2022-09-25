//
//  test.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/21.
//

import UIKit
import Foundation

class RecipeButtonTableViewController_easy: UITableViewController {
    
    var recipesPicked:[RecipeInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipesPicked = recipes.filter{
            $0.methld5 == nil
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesPicked.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let info = recipes[indexPath.row]
        let info = recipesPicked[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UITextView
        imageView.image = UIImage(named: recipesPicked[indexPath.row].thumbnail)

        label.text = "\(info.name) \n\(info.ingredients) \n\(info.seasoning)"
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
