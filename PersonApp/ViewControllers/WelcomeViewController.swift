//
//  WelcomeViewController.swift
//  PersonApp
//
//  Created by Denis Shpagin on 30.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(userName)"
    }

    @IBAction func logoutTapped() {
        dismiss(animated: true)
    }
}
