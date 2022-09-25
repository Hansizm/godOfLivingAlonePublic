//
//  RecipeTableViewController-easy.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/17.
//
import UIKit
import Foundation

class RecipeTableViewController_easy: UITableViewController {
    
    @IBOutlet var RecipeTableView_easy: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeTableViewCell_easy", for: indexPath) as! RecipeTableViewCell_easy
        return cell
    }
}
