//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Ertugrul Berber on 9.07.2022.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var superKahraman = [String]()
    var superKahramanGorselIsimleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        superKahraman.append("Batman")
        superKahraman.append("Ironman")
        superKahraman.append("Wolverine")
        superKahraman.append("Superman")
        superKahraman.append("Captian America")
        
//        var superKahramanGorselleri = [UIImage]()
//        superKahramanGorselleri.append(UIImage(named: "batmanpp")!)
        
        
        superKahramanGorselIsimleri.append("batmanpp")
        superKahramanGorselIsimleri.append("ironman")
        superKahramanGorselIsimleri.append("wolverine")
        superKahramanGorselIsimleri.append("superman")
        superKahramanGorselIsimleri.append("captianamerica")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahraman.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahraman[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superKahramanGorselIsimleri.remove(at: indexPath.row)
            superKahraman.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var secilenIsim = superKahraman[indexPath.row]
        var secilenGorsel = superKahramanGorselIsimleri[indexPath.row]
        performSegue(withIdentifier: "DetailVc", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailVc" {
            let destinationVc = segue.destination as! DetailViewController
            destinationVc.secilenKahramanIsmi = secilenIsim
            destinationVc.secilenGorselIsmi = secilenGorsel
        }
    }
}

