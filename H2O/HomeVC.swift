//
//  ViewController.swift
//  H2O
//
//  Created by Robert Kotrutsa on 01.03.26.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillHomeVC()
    }
    
    private func fillHomeVC() {
        navigationItem.title = "H₂O"
        navigationController?.title = "H₂O"
        navigationController?.navigationBar.prefersLargeTitles = false
    }


}

