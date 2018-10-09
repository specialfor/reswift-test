//
//  RoutingDeps.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import ReSwiftRouter

protocol RoutingDeps {
    var router: Router<AppState> { get }
}
