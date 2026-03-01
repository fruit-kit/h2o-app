//
//  ViewController.swift
//  H2O
//
//  Created by Robert Kotrutsa on 01.03.26.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var drink100MlOutlet: UIButton!
    
    @IBOutlet weak var drink200MlOutlet: UIButton!
    
    @IBOutlet weak var drink300MlOutlet: UIButton!
    
    @IBOutlet weak var customeVolumeOutlet: UIButton!
    
    @IBOutlet weak var undoLastOutlet: UIButton!
    
    @IBOutlet weak var resetAllDayOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillHomeVC()
    }
    
    private func fillHomeVC() {
        // MARK: Fill progress label
        self.progressLabel.text = "Progress: 0 / 2000ml (0%)"
        self.progressLabel.font = .systemFont(ofSize: CGFloat(23))
        self.progressLabel.textColor = .appPrimary
        
        // MARK: Fill navigation
        navigationItem.title = "H₂O"
        navigationController?.title = "H₂O"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // MARK: Fill button labels
        self.drink100MlOutlet.setTitle("Drink 100ml", for: .normal)
        self.drink200MlOutlet.setTitle("Drink 200ml", for: .normal)
        self.drink300MlOutlet.setTitle("Drink 300ml", for: .normal)
        self.customeVolumeOutlet.setTitle("Custome volume", for: .normal)
        self.undoLastOutlet.setTitle("Undo last add", for: .normal)
        self.resetAllDayOutlet.setTitle("Reset all day", for: .normal)
    }
    
    
    @IBAction func drink100MlButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func drink200MlButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func drink300MlButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func customeVolumeButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func undoLastButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func resetAllDayButton(_ sender: UIButton) {
        print(#function)
    }
    
}

