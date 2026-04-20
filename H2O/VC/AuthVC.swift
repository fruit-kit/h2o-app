//
//  AuthVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 20.04.26.
//

import UIKit

class AuthVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup(emailTextField)
        setup(nameTextField)
        setup(passwordTextField)

    }
    
    @IBAction func login(_ sender: UIButton) {
        print(#function)
    }
    
    private func setup(_ textField: UITextField) {
        textField.layer.cornerRadius = 10
        textField.borderStyle = .none
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.clipsToBounds = true
    }
    

}
