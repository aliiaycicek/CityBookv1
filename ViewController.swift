//
//  ViewController.swift
//  CityMonumentsBook
//
//  Created by Ali Ayçiçek on 17.07.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    var monumentsNames = [String]()
    var monumentsImages = [UIImage]()
    @IBOutlet weak var tableView: UITableView!
    
    var chosenMonumentsName = ""
    var chosenMonumetsImages = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
     
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
       // NAMES
        monumentsNames.append("Colesium")
        monumentsNames.append("Tac Mahal")
        monumentsNames.append("Great Wall")
        monumentsNames.append("Red Fort")
        monumentsNames.append("Big Ben")
        monumentsNames.append("Neuschwanstein")
        monumentsNames.append("Stonhenge")
        monumentsNames.append("Sydney Opera House")
        
        // IMAGES
        monumentsImages.append(UIImage (named: "Colesium.jpg")!)
        monumentsImages.append(UIImage (named: "Tac Mahal.jpg")!)
        monumentsImages.append(UIImage (named: "Great Wall.jpg")!)
        monumentsImages.append(UIImage (named: "Red Fort.jpg")!)
        monumentsImages.append(UIImage (named: "Big Ben.jpg")!)
        monumentsImages.append(UIImage (named: "Neuschwanstein.jpg")!)
        monumentsImages.append(UIImage (named: "Stonhenge.jpg")!)
        monumentsImages.append(UIImage (named: "Sydney Opera House.jpg")!)
        
        
      
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monumentsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = monumentsNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMonumentsName = monumentsNames[indexPath.row]
        chosenMonumetsImages = monumentsImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destanationVC = segue.destination as! DetailsVC
            destanationVC.selectedMonumentsName = chosenMonumentsName
            destanationVC.selectedMonumentsImage = chosenMonumetsImages
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.monumentsNames.remove(at: indexPath.row)
            self.monumentsImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}



