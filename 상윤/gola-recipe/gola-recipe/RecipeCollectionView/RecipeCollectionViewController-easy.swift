//
//  RecipeCollectionViewController-easy.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/17.
//
import UIKit
import Foundation



class RecipeCollectionViewController_easy: UICollectionViewController {
    

    let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
        //return recipes.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = recipes[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath)

        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UITextView
        imageView.image = UIImage(named: "sample-1")
//        imageView.image = UIImage(named: recipes[indexPath.row].thumbnail)
        
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = collectionView.frame.width
            let height = collectionView.frame.height
            
            let itemsPerRow: CGFloat = 2
            let widthPadding = sectionInsets.left * (itemsPerRow + 1)
            let itemsPerColumn: CGFloat = 3
            let heightPadding = sectionInsets.top * (itemsPerColumn + 1)
            
            let cellWidth = (width - widthPadding) / itemsPerRow
            let cellHeight = (height - heightPadding) / itemsPerColumn
            
            
            return CGSize(width: cellWidth, height: cellHeight)
        }
}
