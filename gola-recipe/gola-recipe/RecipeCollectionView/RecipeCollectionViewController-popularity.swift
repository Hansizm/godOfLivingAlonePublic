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
        return recipes.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let info = recipes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UITextView
        imageView.image = UIImage(named: recipes[indexPath.row].thumbnail)
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let selectedCell = (sender as! UIButton).superview?.superview as! UICollectionViewCell
        let indexPath = collectionView.indexPath(for: sender as! UICollectionViewCell)!
//        segue.identifier
//        segue.source
        let vcDest = segue.destination as! RecipeDetailCollectionViewController
        
        vcDest.recipe = recipes[indexPath.row]  // 선택한 레시피를 넣어준다.
        
    }
    

}
