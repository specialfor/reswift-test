//
//  ReduxDeps.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwift
import ReSwiftRouter

protocol ReduxDeps {
    var store: Store<AppState> { get }
}
