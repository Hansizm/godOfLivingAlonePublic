//
//  HomeEditTableViewController.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/09/03.
//

import UIKit
import Foundation



class HomeEditTableViewController: UITableViewController {
    
    @IBAction func touchDone(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ingredient = ingredients[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = ingredient.name
        
        let found = ingredientslist.filter { info in
            info.name == ingredient.name
        }
        
        cell.accessoryType = found.count == 0 ? .none : .checkmark

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ingredient = ingredients[indexPath.row]

/*
        for i in 0..<ingredientslist.count {
            if ingredientslist[i].name == ingredient.name {
                // 찾았다.
                ingredientslist.remove(at: i)
            }
            // ...
        }
*/
        let found = ingredientslist.enumerated().filter { _, info in
            ingredient.name == info.name
        }
        
        if found.count == 0 { // 추가 안된 재료.
            ingredientslist.append(ingredient)
        }
        else { // 추가된 재료.
            ingredientslist.remove(at: found.first!.offset)
        }
        tableView.reloadData()
//            if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
//                tableView.cellForRow(at: indexPath)?.accessoryType = .none
//
//
//
////                ingredientslist.remove(at: ingredientslist.firstIndex(of: ingredients[indexPath.row]
//
//
//            }
//            else {
//                tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//
//                ingredientslist.append(ingredients[indexPath.row])
//
////                ingredientslist = ingredients.filter({ (ingredientInfo) -> Bool in
////                    ingredientInfo.name.contains(ingredients[indexPath.row].name)})
//            }
//
        
        
            
        }
}
   
