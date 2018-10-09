//
//  AppReducer.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwift
import ReSwiftRouter

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        navigationState: NavigationReducer.handleAction(
            action,
            state: state?.navigationState))
}
