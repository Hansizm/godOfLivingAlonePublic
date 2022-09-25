//
//  RecipeCollectionViewController-easy.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/17.
//
import UIKit
import Foundation



class RecipeCollectionViewController_easy: UICollectionViewController {
    var recipesPicked:[RecipeInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipesPicked = recipes.filter{
            $0.methld5 == nil
        }
    }
    
    let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipesPicked.count
        //return recipesPicked.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = recipesPicked[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath)

        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UITextView
        imageView.image = UIImage(named: recipesPicked[indexPath.row].thumbnail)
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let selectedCell = (sender as! UIButton).superview?.superview as! UICollectionViewCell
        let indexPath = collectionView.indexPath(for: sender as! UICollectionViewCell)!
//        segue.identifier
//        segue.source
        let vcDest = segue.destination as! RecipeDetailCollectionViewController
        
        vcDest.recipe = recipesPicked[indexPath.row]  // 선택한 레시피를 넣어준다.
        
    }
}
