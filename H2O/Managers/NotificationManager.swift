//
//  NotificationManager.swift
//  H2O
//
//  Created by Robert Kotrutsa on 14.03.26.
//
import UserNotifications

class NotificationManager {
    
    static let shared = NotificationManager()
    private init() { }
    
    func requestPermission(completion: @escaping (Bool) -> Void) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { isAllow, error in
            UserDefaults.standard.set(isAllow, forKey: "requestPermission")
            completion(isAllow)
        }
    }
    
    func sendNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Water reminder"
        content.body = "It's time to drink some water."
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(
            timeInterval: 60,
            repeats: true
        )
        
        let request = UNNotificationRequest(
            identifier: "waterReminder",
            content: content,
            trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
    
    func removeNotification() {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["waterReminder"])
    }
    
}
