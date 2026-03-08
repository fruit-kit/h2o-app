//
//  AddDrinkVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 08.03.26.
//

import UIKit

class AddDrinkVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var addDrinkEntryOutlet: UIButton!
    
    weak var delegate: AddDrinkDelegate?
    var presentVolume: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = "Add drink entry"
        self.titleLabel.font = .systemFont(ofSize: CGFloat(34), weight: .bold)
        
        textFieldOutlet.placeholder = "ml"
        if let presentVolume {
            textFieldOutlet.text = "\(presentVolume)"
        }
        textFieldOutlet.keyboardType = .numberPad
        textFieldOutlet.layer.cornerRadius = 20
        textFieldOutlet.clipsToBounds = true
        textFieldOutlet.layer.borderWidth = 1
        textFieldOutlet.layer.borderColor = UIColor.gray.cgColor
        
        self.addDrinkEntryOutlet.applyStyle(title: "Add", normalColor: .white, highlightedColor: .gray)
    }

    @IBAction func addDrinkEntryAction(_ sender: UIButton) {
        if let ml = Int(self.textFieldOutlet.text ?? "0") {
            DrinkManager.shared.addDrink(ml)
            delegate?.didAddDrink()
            self.dismiss(animated: true)
        } else {
            self.dismiss(animated: true)
        }
    }
    
}

protocol AddDrinkDelegate: AnyObject {
    func didAddDrink()
}
