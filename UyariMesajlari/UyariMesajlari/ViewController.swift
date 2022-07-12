//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by Ertugrul Berber on 8.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordIkiTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextField.text == "" {
            alertOlustur(titleGirdisi: "hata", messageGirdisi: "email eksik")
        } else if passwordTextField.text == "" {
            alertOlustur(titleGirdisi: "hata", messageGirdisi: "parolalar eksik")
        } else if passwordIkiTextField.text != passwordTextField.text {
            alertOlustur(titleGirdisi: "hata", messageGirdisi: "parolalar uyusmuyor")
        } else {
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kullanici olusturuldu")
        }
        
        
        
        
    }
    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String) {
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("ok button tiklandi")
        }
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
    }
}

