//
//  HomeCollectionViewController.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/09/03.
//

import UIKit
import Foundation

class HomeCollectionViewController: UICollectionViewController {
    
    


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.collectionView.reloadData()
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredientslist.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let Image = cell.viewWithTag(1) as! UIImageView
        Image.image = UIImage(named: ingredientslist[indexPath.row].thumbnail)
        
        let label = cell.viewWithTag(2) as! UILabel
        label.text = ingredientslist[indexPath.row].name
        
        Image.layer.borderWidth = 0.5
        Image.layer.masksToBounds = false
        Image.layer.borderColor = UIColor.lightGray.cgColor
        Image.layer.cornerRadius = Image.frame.height/2
        Image.clipsToBounds = true
        
        return cell
    }
    
    
    
    
    
}

