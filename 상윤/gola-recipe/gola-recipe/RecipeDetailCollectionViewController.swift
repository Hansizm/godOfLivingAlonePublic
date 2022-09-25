//
//  RecipeDetailCollectionViewController.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/26.
//

import UIKit
import Foundation

class RecipeDetailCollectionViewController: UICollectionViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = recipes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: "\(info.thumbnail)")
        
        let label = cell.viewWithTag(2) as! UITextView
        label.text = "\(info.name)\n\n\(info.ingredients)\n\n\(info.seasoning)\n\n\(info.methld1)\n\n\(info.methld2)\n\n\(info.methld3)\n\n\(info.methld4)\n\n\(info.methld5)\n\n\(info.methld6)\n\n\(info.methld7)\n\n\(info.methld8)\n\n\(info.methld9)\n\n\(info.methld10)"
        return cell
    }
    
    
    
    
}
