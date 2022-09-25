//
//  MyprofileTableView.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/08/22.
//

import UIKit
import Foundation

class MyprofileTableViewController: UITableViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var MyprofileImage: UIImageView!
    @IBOutlet weak var MyprofileImageTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyprofileImage.layer.borderWidth = 0.5
        MyprofileImage.layer.masksToBounds = false
        MyprofileImage.layer.borderColor = UIColor.lightGray.cgColor
        MyprofileImage.layer.cornerRadius = MyprofileImage.frame.height/2
        MyprofileImage.clipsToBounds = true
    }
}
