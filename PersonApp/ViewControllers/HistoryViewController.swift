//
//  PersonViewController.swift
//  PersonApp
//
//  Created by Denis Shpagin on 04.06.2022.
//

import UIKit

class HistoryViewController: UIViewController {


    @IBOutlet var descriptionLabel: UILabel!
    
     var history = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = history
        
    }
}
