//
//  ViewController.swift
//  H2O
//
//  Created by Robert Kotrutsa on 01.03.26.
//

import UIKit

class HomeVC: UIViewController {
    
    private var currentVolume = 0
    private var goalVolume = 2000
    private var lastAdd = 0

    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var drink100MlOutlet: UIButton!
    @IBOutlet weak var drink200MlOutlet: UIButton!
    @IBOutlet weak var drink300MlOutlet: UIButton!
    @IBOutlet weak var customeVolumeOutlet: UIButton!
    @IBOutlet weak var undoLastOutlet: UIButton!
    @IBOutlet weak var resetAllDayOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupProgressLabel()
        setupButtons()
    }
    
    // MARK: Setup navigation
    private func setupNavigation() {
        navigationItem.title = "H2O"
        navigationController?.title = "H2O"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: Setup progress label
    private func setupProgressLabel() {
        updateProgressLabel()
        self.progressLabel.font = .systemFont(ofSize: CGFloat(23), weight: .bold)
    }
    
    // MARK: Setup buttons
    private func setupButtons() {
        setup(button: self.drink100MlOutlet, title: "Drink 100ml")
        setup(button: self.drink200MlOutlet, title: "Drink 200ml")
        setup(button: self.drink300MlOutlet, title: "Drink 300ml")
        setup(button: self.customeVolumeOutlet, title: "Custome volume")
        setup(button: self.undoLastOutlet, title: "Undo last add")
        setup(button: self.resetAllDayOutlet, title: "Reset all day")
    }
    
    // MARK: Update progress label
    private func updateProgressLabel() {
        let percent = (Double(currentVolume) / Double(goalVolume)) * 100
        progressLabel.text = "Progress: \(currentVolume) / \(goalVolume)ml (\(Int(percent))%)"
    }
    
    private func setup(button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemGray, for: .highlighted)
        button.layer.borderWidth = 1.5
        button.layer.borderColor = UIColor.white.cgColor
    }
 
    @IBAction func drink100MlButton(_ sender: UIButton) {
        lastAdd = 100
        currentVolume += lastAdd
        updateProgressLabel()
    }
    
    @IBAction func drink200MlButton(_ sender: UIButton) {
        lastAdd = 200
        currentVolume += lastAdd
        updateProgressLabel()
    }
    
    @IBAction func drink300MlButton(_ sender: UIButton) {
        lastAdd = 300
        currentVolume += lastAdd
        updateProgressLabel()
    }
    
    @IBAction func customeVolumeButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Enter the volume in ml", message: nil, preferredStyle: .alert)
        let actionButton = UIAlertAction(title: "OK", style: .default) { _ in
            let customeVolume = alertController.textFields?.first?.text ?? ""
            if let customeVolume = Int(customeVolume),
               customeVolume > 0 {
                self.lastAdd = customeVolume
                self.currentVolume = self.lastAdd
                self.updateProgressLabel()
            }
        }
        alertController.addTextField { textField in
            textField.keyboardType = .numberPad
        }
        alertController.addAction(actionButton)
        self.present(alertController, animated: true)
    }
    
    @IBAction func undoLastButton(_ sender: UIButton) {
        guard currentVolume >= lastAdd else {
            currentVolume = 0
            updateProgressLabel()
            return
        }
        currentVolume -= lastAdd
        updateProgressLabel()
        lastAdd = 0
    }
    
    @IBAction func resetAllDayButton(_ sender: UIButton) {
        currentVolume = 0
        updateProgressLabel()
    }
    
}

