//
//  File.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwift

protocol StoreDeps {
    var reducer: Reducer<AppState> { get }
    var state: AppState? { get }
}

extension Store where State == AppState {
    
    convenience init(deps: StoreDeps) {
        self.init(reducer: deps.reducer, state: deps.state)
    }
}
