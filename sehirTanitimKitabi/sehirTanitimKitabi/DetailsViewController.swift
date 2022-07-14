//
//  DetailsViewController.swift
//  sehirTanitimKitabi
//
//  Created by Ertugrul Berber on 10.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel

        
    }
    

    
}
