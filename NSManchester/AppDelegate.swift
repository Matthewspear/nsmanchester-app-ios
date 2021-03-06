//
//  AppDelegate.swift
//  NSManchester
//
//  Created by Ross Butler on 15/01/2016.
//  Copyright © 2016 Ross Butler. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Services
    private let networkingService: NetworkingService = ServicesFactory.networkingService()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
        // Update feed data
        networkingService.update({})
        
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        return true;
    }
}

