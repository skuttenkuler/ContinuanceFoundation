//
//  ViewController.swift
//  ContinuanceFoundation
//
//  Created by Sam Kuttenkuler on 12/10/20.
//

import UIKit

class ViewController: UIViewController {
//   login label
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Log In"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
//  email
    private let emailField: UITextField = {
        let emailField = UITextField()
        emailField.placeholder = "Email"
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.black.cgColor
        return emailField
    }()
//    password
    private let passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.black.cgColor
        passwordField.isSecureTextEntry = true
        return passwordField
    }()
//    submit button
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Log In", for: .normal)
        return button
    }()
    //subviews
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    //layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        label.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 80)
        
        emailField.frame = CGRect(x: 20,
                                  y: label.frame.origin.y+label.frame.size.height+40,
                                  width: view.frame.size.width-40,
                                  height: 50)

        passwordField.frame = CGRect(x: 20,
                                     y: label.frame.origin.y+emailField.frame.size.height+40,
                                     width: view.frame.size.width-40,
                                     height: 50)

        button.frame = CGRect(x: 20,
                              y: label.frame.origin.y+passwordField.frame.size.height+100,
                              width: view.frame.size.width-40,
                              height: 60)

    }
    //keyboard
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        emailField.becomeFirstResponder()
    }
    //action for login button
    @objc private func didTapButton(){
        print("Log in button tapped")
    }

}

