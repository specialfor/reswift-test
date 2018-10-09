//
//  WelcomeViewController.swift
//  redux-test
//
//  Created by Volodymyr Hryhoriev on 10/9/18.
//  Copyright © 2018 Volodymyr Hryhoriev. All rights reserved.
//

import UIKit

class WelcomeViewController: ReduxViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.reduxDeps.store.dispatch(createShowPresentsAction)
        }
    }
    
}
