//
//  ViewController.swift
//  Storyboard-Test
//
//  Created by Abraham Park on 2021/07/30.
//

import UIKit

@IBDesignable class OrangeView: UIView {
    @IBInspectable var roundedCornder: Bool = false {
        didSet {
            makeCorner()
        }
    }
    
    func makeCorner() {
        if roundedCornder == true {
            layer.cornerRadius = 20
            layer.borderWidth = 2.0
            layer.borderColor = UIColor.blue.cgColor
        }
        else {
            layer.cornerRadius = 0
            layer.borderWidth = 0
//            layer.borderColor = UIColor.blue.cgColor
        }
        
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var viewOrange: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        viewOrange.layer.cornerRadius = 20
        //        viewOrange.layer.borderWidth = 2.0
        //        viewOrange.layer.borderColor = UIColor.blue.cgColor
        
        //        viewOrange.layer.masksToBounds = false
        //        viewOrange.layer.shadowColor = UIColor.black.cgColor
        //        viewOrange.layer.shadowOpacity = 0.7
        //        viewOrange.layer.shadowOffset = .zero
        //        viewOrange.layer.shadowRadius = 1
        //
        //        viewOrange.layer.shouldRasterize = true
        //        viewOrange.layer.rasterizationScale = 1
        
        let tgs = UITapGestureRecognizer(target: self, action: #selector(touched))
        
        self.view.addGestureRecognizer(tgs)
    }
    
    @objc func touched() {
        UIView.animate(withDuration: 0.5) {
            (self.viewOrange as? OrangeView)?.roundedCornder.toggle()
        }
    }
    
}

