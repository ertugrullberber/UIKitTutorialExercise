//
//  ViewController.swift
//  jestAlgilayicilar
//
//  Created by Ertugrul Berber on 9.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func gorselDegistir() {
        
        
        if ankara == false {
            imageView.image = UIImage(named: "ankara")
            label.text = "ankara"
            ankara = true
        } else {
            imageView.image = UIImage(named: "istanbul")
            label.text = "istanbul"
            ankara = false
        }
        
    }
        


}

