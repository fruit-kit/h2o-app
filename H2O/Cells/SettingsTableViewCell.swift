//
//  SettingsTableViewCell.swift
//  H2O
//
//  Created by Robert Kotrutsa on 16.03.26.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
