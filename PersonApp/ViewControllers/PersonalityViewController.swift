//
//  PersonalityViewController.swift
//  PersonApp
//
//  Created by Denis Shpagin on 18.06.2022.
//

import UIKit

class PersonalityViewController: UIViewController {

    @IBOutlet var personalityLabel: UILabel!
    
    var personality = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personalityLabel.text = personality
    }
}
