//
//  AppDependencies.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//


import ReSwift
import ReSwiftRouter

/**
 Should be implemented as

 class AppDependencies: DepsProtocol, SomeDep {
 
    // MARK: - DepsProtocol1

    lazy var someDep: SomeDep = {
        return SomeDepImpl(deps: self)
    }
    ...
 
 }
 
 
 protocol DepsProtocol1 {
    var someDep: SomeDep { get }
 }

 protocol SomeDep {
    var anotherDep: AnotherDep { get }
 }
 
 */

class AppDependencies: ReduxDeps, StoreDeps, RoutingDeps, RouterDeps {
    
    init() {
        _router = Router(deps: self)
    }
    
    // MARK: - ReduxDeps
    
    lazy var store: Store<AppState> = {
        return Store(deps: self)
    }()
    
    var router: Router<AppState> {
        return _router
    }
    
    private(set) var _router: Router<AppState>!
    
    
    // MARK: - StoreDeps
    
    var reducer: Reducer<AppState> {
        return appReducer
    }
    
    lazy var state: AppState? = nil
    
    
    // MARK: - RouterDeps
    
    lazy var routable: RootRoutable = {
        let navigationController = UINavigationController()
        let deps = ReduxDepsImpl(deps: self)
        return RootRoutableImpl(
            navigationController: navigationController,
            reduxDeps: deps)
    }()
    
    var stateTransform: NavigationStateTransform {
        return { subs in
            return subs.select { $0.navigationState }
        }
    }
    
}
