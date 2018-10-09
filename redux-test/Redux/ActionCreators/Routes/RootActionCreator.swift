//
//  RootActionCreator.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwift
import ReSwiftRouter

func createShowWelcomeAction(state: AppState, store: DispatchingStoreType) -> Action? {
    return SetRouteAction(["Welcome"])
}

func createShowPresentsAction(state: AppState, store: DispatchingStoreType) -> Action? {
    return SetRouteAction(["Presents"])
}
