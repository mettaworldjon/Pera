//
//  WelcomeController.swift
//  Pera
//
//  Created by Jonathan on 11/14/18.
//  Copyright © 2018 Jonathan. All rights reserved.
//

import UIKit
import Pastel

class WelcomeController: UIViewController {
    
    // Welcome Title
    let welcomeTitle:UILabel = {
        let title = UILabel()
        title.text = "Welcome"
        title.textColor = UIColor(red:0.20, green:0.21, blue:0.26, alpha:1.0)
        title.font = .systemFont(ofSize: 22)
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let signUpBtn:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign Up", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        return btn
    }()
    
    let loginBtn:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(UIColor(red:0.20, green:0.21, blue:0.26, alpha:1.0), for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupWelcomeContainer()
    }
    
    fileprivate func setupUI() {
        view.backgroundColor = UIColor(red:0.89, green:0.90, blue:0.93, alpha:1.0)
        navigationController?.navigationBar.isHidden = true
    }
    
    fileprivate func setupWelcomeContainer() {
        // Container
        let container:UIView = {
            let container = UIView()
            container.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.96, alpha:1.00)
            container.layer.cornerRadius = 15
            container.translatesAutoresizingMaskIntoConstraints = false
            return container
        }()
        
        view.addSubview(container)
        NSLayoutConstraint.activate([
            container.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            container.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            container.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            container.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            ])
        
        
        
        container.addSubview(welcomeTitle)
        NSLayoutConstraint.activate([
            welcomeTitle.heightAnchor.constraint(equalToConstant: 26),
            welcomeTitle.widthAnchor.constraint(equalTo: container.widthAnchor),
            welcomeTitle.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            welcomeTitle.centerYAnchor.constraint(equalTo: container.centerYAnchor, constant: -76)
            ])
        
        // Welcome Subtitle
        let welcomeSubTitle:UILabel = {
            let sub = UILabel()
            sub.translatesAutoresizingMaskIntoConstraints = false
            sub.textAlignment = .center
            sub.numberOfLines = 0
            sub.text = "Sed ut perspiciatis unde omnis iste natus error sit."
            sub.textColor = UIColor(red:0.20, green:0.21, blue:0.26, alpha:1.0)
            sub.font = .systemFont(ofSize: 14)
            return sub
        }()
        
        container.addSubview(welcomeSubTitle)
        NSLayoutConstraint.activate([
            welcomeSubTitle.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            welcomeSubTitle.topAnchor.constraint(equalTo: welcomeTitle.bottomAnchor, constant: 20),
            welcomeSubTitle.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.8),
            ])
        
        // Button Container
        let btnContainer:PastelView = {
            let container = PastelView()
            container.translatesAutoresizingMaskIntoConstraints = false
            container.startPastelPoint = .left
            container.endPastelPoint = .right
            container.animationDuration = 3.0
            container.layer.cornerRadius = 25
            container.clipsToBounds = true
            container.setColors([UIColor(red:1.00, green:0.40, blue:0.63, alpha:1.0),UIColor(red:1.00, green:0.54, blue:0.37, alpha:1.0)])
            return container
        }()
        
        
        container.addSubview(btnContainer)
        btnContainer.startAnimation()
        NSLayoutConstraint.activate([
            btnContainer.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            btnContainer.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -76),
            btnContainer.heightAnchor.constraint(equalToConstant: 50),
            btnContainer.widthAnchor.constraint(equalTo: welcomeSubTitle.widthAnchor)
            ])
        
        container.addSubview(signUpBtn)
        NSLayoutConstraint.activate([
            signUpBtn.centerXAnchor.constraint(equalTo: btnContainer.centerXAnchor),
            signUpBtn.centerYAnchor.constraint(equalTo: btnContainer.centerYAnchor),
            signUpBtn.widthAnchor.constraint(equalTo: btnContainer.widthAnchor),
            signUpBtn.heightAnchor.constraint(equalTo: btnContainer.heightAnchor)
            ])
        signUpBtn.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        
        container.addSubview(loginBtn)
        NSLayoutConstraint.activate([
            loginBtn.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            loginBtn.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 27),
            loginBtn.widthAnchor.constraint(equalToConstant: 100),
            loginBtn.heightAnchor.constraint(equalToConstant: 25)
            ])
    } 
    
    @objc fileprivate func handleSignUp() {
        let signup = SignupController()
        signup.mainVC = self
        navigationController?.pushViewController(signup, animated: true)
    }

}
