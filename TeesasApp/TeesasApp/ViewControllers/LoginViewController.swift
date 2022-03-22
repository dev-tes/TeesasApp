//
//  LoginViewController.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
//        label.font = UIFont.systemFont(ofSize: 15)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let footerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Great to see you again!"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 25
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.setPadding(left: 20, right: 20)
        textField.placeholder = "Enter Phone Number"
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 25
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.setPadding(left: 20, right: 48)
        textField.isSecureTextEntry = true
        textField.placeholder = "Enter Password"
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        return textField
    }()
    
    let checkBoxButton: UIButton = {
        let checkbox = UIButton.init(type: .custom)
        checkbox.setImage(UIImage.init(systemName: "checkmark.square"), for: .normal)
        checkbox.setImage(UIImage.init(systemName: "square"), for: .selected)
        checkbox.isSelected = true
        checkbox.addTarget(self, action: #selector(toggleCheckboxSelection), for: .touchUpInside)
        checkbox.tintColor = .green
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        return checkbox
    }()
    
    let rememberMeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Remember Me"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Forgot Password?"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    var loginButton: GreenButton = {
        let button = GreenButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }()
    
    let orLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "OR"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let loginWithLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login with"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    var googleLoginButton: GoogleAndFacebook = {
        let button = GoogleAndFacebook()
//        button.setImage(UIImage(named: "g.square.fill"), for: .normal)
        button.addLeading(image: "g.square.fill", text: "Google")
        return button
    }()
    
    var facebookLoginButton: GoogleAndFacebook = {
        let button = GoogleAndFacebook()
        button.setImage(UIImage(systemName: "g.square.fill"), for: .normal)
        button.addLeading(image: "g.square.fill", text: "Google")
        return button
    }()
    
    let createNewAccountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Create a new account?"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    var registerButton: GreenButton = {
        let button = GreenButton()
        button.setTitle("Register", for: .normal)
        button.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
        constraintViews()
    }
    
    func constraintViews() {
        view.addSubview(loginLabel)
        view.addSubview(footerLabel)
        view.addSubview(phoneNumberTextField)
        view.addSubview(passwordTextField)
        view.addSubview(checkBoxButton)
        view.addSubview(rememberMeLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
//        view.addSubview(loginLabel)
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            footerLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 30),
            footerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            phoneNumberTextField.topAnchor.constraint(equalTo: footerLabel.bottomAnchor, constant: 30),
            phoneNumberTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: footerLabel.leadingAnchor),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 30),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: footerLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            checkBoxButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            checkBoxButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            
            rememberMeLabel.topAnchor.constraint(equalTo: checkBoxButton.topAnchor,constant: 2),
            rememberMeLabel.leadingAnchor.constraint(equalTo: checkBoxButton.trailingAnchor, constant: 8)
            
        ])
    }

    
    @objc func textFieldDidChange() {
    }
    
    @objc func toggleCheckboxSelection() {
        checkBoxButton.isSelected = !checkBoxButton.isSelected
    }
    
    @objc func didTapLoginButton() {
        navigationController?.pushViewController(MainTabBarViewController(), animated: true)
    }
    
    @objc func didTapRegisterButton() {
        navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
}
