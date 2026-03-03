//
//  UIButton+Style.swift
//  H2O
//
//  Created by Robert Kotrutsa on 02.03.26.
//

import UIKit

extension UIButton {
    func applyStyle(title: String, normalColor: UIColor, highlightedColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(normalColor, for: .normal)
        self.setTitleColor(highlightedColor, for: .highlighted)
        self.layer.borderWidth = 1.5
        self.layer.borderColor = normalColor.cgColor
    }
}
