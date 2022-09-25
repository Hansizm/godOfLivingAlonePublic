//
//  HomeTableViewController.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/09/03.
//

import UIKit
import Foundation

class HomeTableViewController: UITableViewController {
    @IBOutlet weak var HomeUITextView: UITextView!
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return 
//    }
    
    override func viewWillAppear(_ animated: Bool) {

        if ingredientslist.count == 0 {
            HomeUITextView.isHidden = false
        }else{
            HomeUITextView.isHidden = true
        }
    }
}
