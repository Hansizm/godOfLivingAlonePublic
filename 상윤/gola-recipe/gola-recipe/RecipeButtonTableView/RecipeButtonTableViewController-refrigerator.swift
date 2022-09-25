//
//  RecipeButtonTableViewController-refrigerator.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/21.
//

import UIKit
import Foundation

class RecipeButtonTableViewController_refrigerator: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = recipes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: recipes[indexPath.row].thumbnail)
//        imageView.image = UIImage(named: "sample-2")
        
        let label = cell.viewWithTag(2) as! UITextView
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"
        
        
        return cell
    }
}
