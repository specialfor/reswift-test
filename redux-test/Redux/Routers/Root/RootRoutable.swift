//
//  RootRoutable.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import UIKit
import ReSwiftRouter

protocol RootRoutable: Routable {
    var navigationController: UINavigationController { get }
}
