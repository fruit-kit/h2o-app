//
//  HistoryVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 06.03.26.
//

import UIKit

class HistoryVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
 
    private func setupNavigation() {
        navigationItem.title = "History"
        navigationController?.title = "History"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
