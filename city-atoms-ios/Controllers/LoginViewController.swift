//
//  LoginViewController.swift
//  ctatestthing
//
//  Created by Ahad Islam on 3/16/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit
import SwiftUI

enum AccountState {
    case existingUser
    case newUser
}

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signButton: LButton!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var weakLabel: UILabel!

    var accountState: AccountState = .existingUser

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signButtonPressed(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
            let password = passwordTextField.text, !password.isEmpty else {
                errorLabel.text = "Fields are empty."
                errorLabel.isHidden = false
                return
        }

        UIViewController.showViewController(from: "Main", id: "tabBC")
    }

    @IBAction func changeButtonPressed(_ sender: UIButton) {

//        accountState = accountState == .newUser ? .existingUser : .newUser
//        switch accountState {
//        case .existingUser:
//            signButton.setTitle("Login", for: .normal)
//            weakLabel.text = "No account?"
//            changeButton.setTitle("SIGNUP", for: .normal)
//        case .newUser:
//            signButton.setTitle("Signup", for: .normal)
//            weakLabel.text = "Already account?"
//            changeButton.setTitle("LOGIN", for: .normal)
//        }

        present(UIHostingController(rootView: RegistrationView()), animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
