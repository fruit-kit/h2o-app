//
//  NotificationsVC.swift
//  H2O
//
//  Created by Robert Kotrutsa on 14.03.26.
//

import UIKit

class RemindersVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var frequencyLabel: UILabel!
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    @IBOutlet weak var reminderLabelOutlet: UILabel!
    @IBOutlet weak var reminderSwitcherOutlet: UISwitch!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Reminders"
        frequencyLabel.text = "Remind me every"
        datePickerOutlet.countDownDuration = UserDefaults.standard.object(forKey: "intervalReminder") as? TimeInterval ?? 10800
        reminderLabelOutlet.text = "Water reminders"
        
        if UserDefaults.standard.bool(forKey: "waterReminder"),
           UserDefaults.standard.bool(forKey: "requestPermission") {
            reminderSwitcherOutlet.isOn = true
        } else {
            reminderSwitcherOutlet.isOn = false
        }
    }
    
    // MARK: - Actions
    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        let interval = sender.countDownDuration
        UserDefaults.standard.set(interval, forKey: UserDefaultsKeys.intervalReminder.rawValue)
        if reminderSwitcherOutlet.isOn {
            NotificationManager.shared.removeNotification()
            NotificationManager.shared.sendNotification(with: interval)
        }
    }
    
    @IBAction func reminderSwitcherAction(_ sender: UISwitch) {
        if sender.isOn {
            NotificationManager.shared.requestPermission { isAllowed in
                guard isAllowed else {
                    DispatchQueue.main.async {
                        self.reminderSwitcherOutlet.isOn = false
                    }
                    UserDefaults.standard.set(false, forKey: "waterReminder")
                    return
                }
                UserDefaults.standard.set(true, forKey: "waterReminder")
                let interval = UserDefaults.standard.object(forKey: "intervalReminder") as? TimeInterval ?? 10800
                NotificationManager.shared.removeNotification()
                NotificationManager.shared.sendNotification(with: interval)
            }
        } else {
            UserDefaults.standard.set(sender.isOn, forKey: "waterReminder")
            NotificationManager.shared.removeNotification()
        }
    }
    
}
