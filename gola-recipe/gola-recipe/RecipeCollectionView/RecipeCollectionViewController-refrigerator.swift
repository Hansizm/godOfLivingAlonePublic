//
//  RecipeCollectionViewController-refrigerator.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/17.
//
import UIKit
import Foundation



class RecipeColletionViewController_refrigerator: UICollectionViewController {
    
    
    var recipesPicked:[RecipeInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipesPicked = recipes.filter{
            $0.methld7 != nil
//            $0.ingredients == ingredientslist
            
        }
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipesPicked.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = recipesPicked[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: recipesPicked[indexPath.row].thumbnail)
        
        let label = cell.viewWithTag(2) as! UITextView
        label.text = "\(info.name)\n\(info.ingredients)\n\(info.seasoning)"
//      imageView.image = UIImage(named: "sample-2")
        
        return cell
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






