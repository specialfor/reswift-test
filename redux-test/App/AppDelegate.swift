//
//  AppDelegate.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/8/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import UIKit
import ReSwiftRouter


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appDependencies = AppDependencies()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        setup()
        
        return true
    }
    
    private func setup() {
        startRoute()
        setupWindow(with: appDependencies.routable.navigationController)
    }
    
    private func startRoute() {
        appDependencies.store.dispatch(createShowWelcomeAction)
    }

    private func setupWindow(with navigationContoller: UINavigationController) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationContoller
        
        window?.makeKeyAndVisible()
    }

}

