//
//  GoalVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 01.03.26.
//

import UIKit

class GoalVC: UIViewController {
    
    
    @IBOutlet weak var goalLabel: UILabel!
    
    @IBOutlet weak var setGoalOutlet: UIButton!
    
    @IBOutlet weak var resetToDefaultOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        fillGoalVC()
    }
    
    private func fillGoalVC() {
        self.goalLabel.text = "Current goal 2000ml"
        self.goalLabel.font = .systemFont(ofSize: CGFloat(23))
        
        navigationItem.title = "Goal"
        navigationController?.title = "Goal"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        self.setGoalOutlet.setTitle("Set goal", for: .normal)
        self.resetToDefaultOutlet.setTitle("Reset to default", for: .normal)
    }
    
    @IBAction func setGoalButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func resetToDefaultButton(_ sender: UIButton) {
        print(#function)
    }
    
}
