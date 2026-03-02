//
//  GoalVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 01.03.26.
//

import UIKit

class GoalVC: UIViewController {
    
    var currentGoal = 0
    
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var setGoalOutlet: UIButton!
    @IBOutlet weak var resetToDefaultOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fillGoalVC()
    }
    
    private func fillGoalVC() {
        self.goalLabel.text = "Current goal \(self.currentGoal)ml"
        self.goalLabel.font = .systemFont(ofSize: CGFloat(23), weight: .bold)
        
        navigationItem.title = "Goal"
        navigationController?.title = "Goal"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        self.setGoalOutlet.applyStyle(title: "Set goal", normalColor: .white, highlightedColor: .gray)
        self.resetToDefaultOutlet.applyStyle(title: "Reset to default", normalColor: .systemPink, highlightedColor: .gray)
    }
    
    @IBAction func setGoalButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func resetToDefaultButton(_ sender: UIButton) {
        print(#function)
    }
    
}
