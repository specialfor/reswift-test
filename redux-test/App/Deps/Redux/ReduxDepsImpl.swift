//
//  ReduxDepsImpl.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwift
import ReSwiftRouter

class ReduxDepsImpl: ReduxDeps {
    let store: Store<AppState>
    
    init(store: Store<AppState>) {
        self.store = store
    }
    
    convenience init(deps: ReduxDeps) {
        self.init(store: deps.store)
    }
}
