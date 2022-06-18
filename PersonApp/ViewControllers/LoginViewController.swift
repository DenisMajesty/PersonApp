//
//  ViewController.swift
//  PersonApp
//
//  Created by Denis Shpagin on 28.05.2022.
//

import UIKit

class LoginViewController: UIViewController, UITabBarDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    private let person = Person()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for viewController in tabBarController.viewControllers! {
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.userName = person.nameUser
            } else if let personViewConroller = viewController as? HistoryViewController {
                personViewConroller.history = person.description
            } else if let personaliryViewController = viewController as? PersonalityViewController {
                personaliryViewController.personality = person.personality
            }
        }
      }
    
    
    @IBAction func loginTapped() {
        if userNameTextField.text != person.login || passwordTextField.text != person.password {
            alertController(title: "Ups", and: "The username or password is entered incorrectly!")
        } else {
            performSegue(withIdentifier: "welcomeViewController", sender: nil)
        }
    }
    
    @IBAction func promptsNameAndPassword(_ sender: UIButton) {
        sender.tag == 0
        ? alertController(title: "Oops", and: "Your name is \(person.login)")
        : alertController(title: "Oops", and: "Your password is \(person.password)")
    }
    
}



// MARK: - Work with keyboard

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginTapped()
        }
        return true
    }
}

// MARK: - Alert Controller

extension LoginViewController {
    func alertController(title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        present(alert, animated: true)
        alert.addAction(okAlert)
    }
}


