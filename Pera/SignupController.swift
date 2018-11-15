//
//  SignupController.swift
//  Pera
//
//  Created by Jonathan on 11/14/18.
//  Copyright © 2018 Jonathan. All rights reserved.
//

import UIKit

class SignupController: UIViewController {
    
    var mainVC:WelcomeController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let btn = UIButton(type: .system)
        view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Click Me", for: .normal)
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        btn.addTarget(self, action: #selector(clickMeh), for: .touchUpInside)
        self.navigationItem.hidesBackButton = true
    }
    
    @objc func clickMeh() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
