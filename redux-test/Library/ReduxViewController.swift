//
//  ReduxViewController.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import UIKit

class ReduxViewController: UIViewController {
    
    let reduxDeps: ReduxDeps
    
    init(reduxDeps: ReduxDeps) {
        self.reduxDeps = reduxDeps
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
