//
//  RecipeCollectionViewController-popularity.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/17.
//
import UIKit
import Foundation

class RecipeCollectionViewController_popularity: UICollectionViewController{
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UITextView
        imageView.image = UIImage(named: "sample-3")
        
        return cell
    }
}
