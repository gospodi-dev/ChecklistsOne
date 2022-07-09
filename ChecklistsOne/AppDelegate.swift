//
//  AppDelegate.swift
//  ChecklistsOne
//
//  Created by Gospodi on 20.02.2022.
//

import UIKit
import UserNotifications // говорит компилятору, что мы собираемся использовать платформу пользовательских уведомлений

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Notification authorization. Cообщаем iOS, что приложение хочет отправлять уведомления типа “alert” со звуковым эффектом
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) {granted, error in
            if granted {
                print("We have permission")
            } else {
                print("Permission denied")
            }
        }
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

