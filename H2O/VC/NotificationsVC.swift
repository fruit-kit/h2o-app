//
//  NotificationsVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 14.03.26.
//

import UIKit

class NotificationsVC: UIViewController {
    
    @IBOutlet weak var notificationSwitcherOutlet: UISwitch!
    @IBOutlet weak var notificationLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Notifications"
        notificationLabelOutlet.text = "Water reminders"
        
        if UserDefaults.standard.bool(forKey: "waterReminder"),
           UserDefaults.standard.bool(forKey: "requestPermission") {
            notificationSwitcherOutlet.isOn = true
        } else {
            notificationSwitcherOutlet.isOn = false
        }
    }
    
    @IBAction func notificationSwitcherAction(_ sender: UISwitch) {
        if sender.isOn {
            print("User turned on Reminders")
            NotificationManager.shared.requestPermission { isAllowed in
                DispatchQueue.main.async {
                    guard isAllowed else {
                        print("User turned off Notifications")
                        self.notificationSwitcherOutlet.isOn = false
                        UserDefaults.standard.set(false, forKey: "waterReminder")
                        return
                    }
                    print("User turned on Notifications")
                    UserDefaults.standard.set(true, forKey: "waterReminder")
                    NotificationManager.shared.sendNotification()
                }
            }
        } else {
            print("User turned off Reminders")
            UserDefaults.standard.set(sender.isOn, forKey: "waterReminder")
            NotificationManager.shared.removeNotification()
        }
    }
    
}
