//
//  GoalVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 01.03.26.
//

import UIKit

class GoalVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        fillGoalVC()
    }
    
    private func fillGoalVC() {
        navigationItem.title = "Goal"
        navigationController?.title = "Goal"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
