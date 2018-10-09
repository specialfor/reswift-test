//
//  RootRoutableImpl.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwiftRouter
import UIKit

class RootRoutableImpl: RootRoutable {
    
    let navigationController: UINavigationController
    let reduxDeps: ReduxDeps
    
    init(navigationController: UINavigationController, reduxDeps: ReduxDeps) {
        self.navigationController = navigationController
        self.reduxDeps = reduxDeps
    }
    
    
    // MARK: - Routable
    
    func pushRouteSegment(
        _ routeElementIdentifier: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        
        if routeElementIdentifier == "Welcome" {
            pushViewController(with: routeElementIdentifier, animated: animated)
        }
        
        completionHandler()
        return self
    }
    
    func popRouteSegment(
        _ routeElementIdentifier: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler) {
        
        completionHandler()
    }
    
    func changeRouteSegment(
        _ from: RouteElementIdentifier,
        to: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        
        if from == "Welcome", to == "Presents" {
            let vc = pushViewController(with: to, animated: animated)
            navigationController.viewControllers = [vc]
        }
        
        completionHandler()
        return self
    }
    
    @discardableResult
    private func pushViewController(
                with identifier: RouteElementIdentifier,
                animated: Bool) -> UIViewController {
                
        let vc = makeViewController(for: identifier)
        navigationController.pushViewController(vc, animated: animated)
        return vc
    }
    
    private func makeViewController(for identifier: RouteElementIdentifier) -> UIViewController {
        switch identifier {
        case "Welcome":
            return WelcomeViewController(reduxDeps: reduxDeps)
        case "Presents":
            return PresentsViewController(reduxDeps: reduxDeps)
        default:
            fatalError()
        }
        
    }
    
    
}
