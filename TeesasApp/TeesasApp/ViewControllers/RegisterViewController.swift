//
//  RegisterViewController.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private let backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        return button
    }()
    
    let RegisterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let footnoteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Access many Tutorials and Engaging Videos"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 25
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.setPadding(left: 20, right: 20)
        textField.placeholder = "Enter Name"
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        return textField
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
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 25
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.setPadding(left: 20, right: 20)
        textField.placeholder = "Enter Email Address"
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
        textField.setPadding(left: 20, right: 20)
        textField.isSecureTextEntry = true
        textField.placeholder = "Enter Password"
        return textField
    }()
    
    let cityTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 25
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.setPadding(left: 20, right: 20)
        textField.placeholder = "City / Nearest Location"
        return textField
    }()
    
    let dateOfBirthTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 25
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.setPadding(left: 20, right: 20)
        textField.placeholder = "Date of Birth"
        return textField
    }()
    
    var registerButton: GreenButton = {
        let button = GreenButton()
        button.setTitle("Register", for: .normal)
        button.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        return button
    }()
    
    let privacyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Great to see you again!"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let andLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Great to see you again!"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let tAndCLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Great to see you again!"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func textFieldDidChange() {
    }
    
    @objc func didTapRegisterButton() {
        navigationController?.pushViewController(MainTabBarViewController(), animated: true)
    }
}

