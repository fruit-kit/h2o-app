//
//  AuthVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 20.04.26.
//

import UIKit

class AuthVC: UIViewController {

    private var signup: Bool = true {
        didSet {
            if signup {
                label.text = "Create an account"
                nameTextField.isHidden = false
                statusLabel.text = "Already have an account?"
                passwordTextField.placeholder = "Create your password"
                loginButton.setTitle("Log In", for: .normal)
            } else {
                label.text = "Login"
                nameTextField.isHidden = true
                passwordTextField.placeholder = "Enter your password"
                statusLabel.text = "Don't have an account yet?"
                loginButton.setTitle("Sign Up", for: .normal)
            }
        }
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup(emailTextField)
        setup(nameTextField)
        setup(passwordTextField)

    }
    
    @IBAction func switchLogin(_ sender: UIButton) {
        signup.toggle()
    }
    
    private func setup(_ textField: UITextField) {
        textField.layer.cornerRadius = 10
        textField.borderStyle = .none
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.clipsToBounds = true
    }
    

}
