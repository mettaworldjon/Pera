//
//  MainFeed.swift
//  Pera
//
//  Created by Jonathan on 11/14/18.
//  Copyright © 2018 Jonathan. All rights reserved.
//

import UIKit

class MainFeed: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        present(UINavigationController(rootViewController: WelcomeController()), animated: true, completion: nil)
    }
}
