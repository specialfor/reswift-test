//
//  RouterDeps.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwiftRouter
import ReSwift

typealias NavigationStateTransform = (Subscription<AppState>) -> Subscription<NavigationState>

protocol RouterDeps {
    var store: Store<AppState> { get }
    var routable: RootRoutable { get }
    var stateTransform: NavigationStateTransform { get }
}


extension Router where State == AppState {
    
    convenience init(deps: RouterDeps) {
        self.init(
            store: deps.store,
            rootRoutable: deps.routable,
            stateTransform: deps.stateTransform)
    }
}
