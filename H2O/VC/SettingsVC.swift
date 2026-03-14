//
//  SettingsVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 14.03.26.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet weak var notificationButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        notificationButtonOutlet.applyStyle(
            title: "Notifications",
            normalColor: .white,
            highlightedColor: .gray
        )
    }

    private func setupNavigation() {
        navigationItem.title = "Settings"
        navigationController?.title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func notificationButtonAction(_ sender: UIButton) {
        let notificationsVC = NotificationsVC(nibName: "NotificationsVC", bundle: Bundle.main)
        self.navigationController?.pushViewController(notificationsVC, animated: true)
    }
    
}
