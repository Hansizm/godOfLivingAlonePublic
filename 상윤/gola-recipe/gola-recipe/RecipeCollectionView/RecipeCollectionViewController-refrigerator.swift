//
//  RecipeCollectionViewController-refrigerator.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/17.
//
import UIKit
import Foundation



class RecipeColletionViewController_refrigerator: UICollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = recipes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: recipes[indexPath.row].thumbnail)
        
        let label = cell.viewWithTag(2) as! UITextView
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"
//      imageView.image = UIImage(named: "sample-2")
        
        return cell
    }
}






