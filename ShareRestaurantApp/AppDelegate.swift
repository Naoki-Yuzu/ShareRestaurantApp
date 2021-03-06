//
//  AppDelegate.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/13.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit
import Firebase
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSServices.provideAPIKey(googleAPI)
        FirebaseApp.configure()
        
        if #available(iOS 13, *) {
        } else {
            
            if Auth.auth().currentUser != nil {
                
                print("exists user..")
//                window = UIWindow(frame: UIScreen.main.bounds)
//                let customNavigationController = UINavigationController(rootViewController: CustomTabBarController())
//                window?.rootViewController = customNavigationController
//                window?.makeKeyAndVisible()
                
                window = UIWindow(frame: UIScreen.main.bounds)
                let navContainerController = UINavigationController(rootViewController: ContainerController())
                window?.rootViewController = navContainerController
                window?.makeKeyAndVisible()
                
            } else {
                
                print("no user..")
                window = UIWindow(frame: UIScreen.main.bounds)
                let signUpNavigationController = UINavigationController(rootViewController: SignUpController())
                window?.rootViewController = signUpNavigationController
                window?.makeKeyAndVisible()
                
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

