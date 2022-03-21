//
//  LoginViewController.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let LoginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 15)
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
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        return textField
    }()
    
    let checkBoxButton: UIButton = {
        let checkbox = UIButton.init(type: .custom)
        checkbox.setImage(UIImage.init(named: "iconCheckboxOutlined"), for: .normal)
        checkbox.setImage(UIImage.init(named: "iconCheckboxFilled"), for: .selected)
        checkbox.addTarget(self, action: #selector(toggleCheckboxSelection), for: .touchUpInside)
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
        button.setImage(UIImage(named: "g.square.fill"), for: .normal)
        return button
    }()
    
    var facebookLoginButton: GoogleAndFacebook = {
        let button = GoogleAndFacebook()
        button.setImage(UIImage(named: "g.square.fill"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @objc func textFieldDidChange() {
    }
    
    @objc func toggleCheckboxSelection() {
        checkBoxButton.isSelected = !checkBoxButton.isSelected
    }
    
    @objc func didTapLoginButton() {
        navigationController?.pushViewController(MainTabBarViewController(), animated: true)
    }
}
