//
//  ViewController.swift
//  GestureRecognisers
//
//  Created by AAJM van Montfort on 05/07/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblImage: UILabel!
    
    var is2256 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        
        imageView.addGestureRecognizer(gestureRecogniser)
    }

    @objc func changePicture() {
        
        if is2256 {
            imageView.image = UIImage(named: "BR96 2288")
            lblImage.text = "BR96 2288"
            
            is2256 = false
        } else {
            imageView.image = UIImage(named: "BR96 2256")
            lblImage.text = "BR96 2256"
            
            is2256 = true
        }
    }
    
}

