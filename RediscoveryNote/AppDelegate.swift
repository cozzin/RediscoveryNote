//
//  AppDelegate.swift
//  RediscoveryNote
//
//  Created by 홍성호 on 2017. 10. 10..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        UITabBar.appearance().tintColor = UIColor.Custom.tint
        UINavigationBar.appearance().tintColor = UIColor.Custom.tint
        
        
        // Sets background to a blank/empty image
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
//        // Sets shadow (line below the bar) to a blank image
//        UINavigationBar.appearance().shadowImage = UIImage()
//        // Sets the translucent background color
//        UINavigationBar.appearance().backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
//        UINavigationBar.appearance().backgroundColor = UIColor.Custom.background
        // Set translucent. (Default value is already true, so this can be removed if desired.)
//        UINavigationBar.appearance().isTranslucent = true
      
        UISearchBar.appearance().tintColor = UIColor.Custom.tint
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffsetMake(-60, 0), for:UIBarMetrics.default)
        
        if let font = UIFont.init(customFont: .MyeongjoBold, withSize: Constants.Font.small){
            UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font : font], for: .normal)
            UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font : font], for: .highlighted)
                UINavigationBar.appearance().titleTextAttributes = [kCTFontAttributeName as NSAttributedStringKey:font]
        }
        
        

        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

