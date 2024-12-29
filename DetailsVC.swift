//
//  DetailsVC.swift
//  CityMonumentsBook
//
//  Created by Ali Ayçiçek on 18.07.2023.
//

import UIKit

class DetailsVC: UIViewController {

    var selectedMonumentsName = ""
    var selectedMonumentsImage = UIImage()
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedMonumentsName
        imageView.image = selectedMonumentsImage
        
        
    }
    

  
}
