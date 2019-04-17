//
//  AppDelegate.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/15/19.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let dependencyManager = DependencyManager()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let welcomeView = dependencyManager.resolver.resolve(WelcomeView.self)
        window?.rootViewController = welcomeView
        window?.makeKeyAndVisible()
        
        return true
    }
}
