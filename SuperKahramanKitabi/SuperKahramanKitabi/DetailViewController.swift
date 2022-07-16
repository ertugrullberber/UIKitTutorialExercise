//
//  DetailViewController.swift
//  SuperKahramanKitabi
//
//  Created by Ertugrul Berber on 9.07.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var secilenKahramanIsmi = ""
    var secilenGorselIsmi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: secilenGorselIsmi)
        label.text = secilenKahramanIsmi
    }
    

   

}
