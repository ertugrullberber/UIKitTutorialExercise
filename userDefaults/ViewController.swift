//
//  ViewController.swift
//  userDefaults
//
//  Created by Ertugrul Berber on 8.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let gelenNot = kaydedilenNot as? String{
            notLabel.text = "Yapilacak is \(gelenNot)"
        }
        if let gelenZaman = kaydedilenZaman as? String {
            zamanLabel.text = "Yapilacak zaman \(gelenZaman)"
    }

    @IBAction func kaydetTiklandi(_ sender: Any) {
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = "Yapilacak is: \(notTextField.text)"
        zamanLabel.text = "Yapilacak zaman: \(zamanTextField.text)"
    }
    
    
    @IBAction func silTiklandi(_ sender: Any) {
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let kaydedilenNot = kaydedilenNot as? String {
            UserDefaults.standard.removeObject(forKey: "not")
        }
        if let kaydedilenZaman = kaydedilenZaman as? String {
            UserDefaults.standard.removeObject(forKey: "zaman")
        }
    }
    
    }

    
}

