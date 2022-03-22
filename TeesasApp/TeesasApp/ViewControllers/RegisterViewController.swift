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
    
    let registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = UIColor.systemBackground
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    let contentView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
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
    
    let mRadioButton: UIButton = {
        let checkbox = UIButton.init(type: .custom)
        checkbox.setImage(UIImage.init(systemName: "checkmark.square"), for: .normal)
        checkbox.setImage(UIImage.init(systemName: "square"), for: .selected)
        checkbox.isSelected = true
        checkbox.addTarget(self, action: #selector(toggleCheckboxSelection), for: .touchUpInside)
        checkbox.tintColor = .green
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        return checkbox
    }()
    
    let maleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Great to see you again!"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let fRadioButton: UIButton = {
        let checkbox = UIButton.init(type: .custom)
        checkbox.setImage(UIImage.init(systemName: "checkmark.square"), for: .normal)
        checkbox.setImage(UIImage.init(systemName: "square"), for: .selected)
        checkbox.isSelected = true
        checkbox.addTarget(self, action: #selector(toggleCheckboxSelection), for: .touchUpInside)
        checkbox.tintColor = .green
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        return checkbox
    }()
    
    let femaleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Great to see you again!"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
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
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
        constraintViews()
    }
    
    func constraintViews() {
        view.addSubview(backButton)
                view.addSubview(registerLabel)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(footnoteLabel)
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registerLabel.topAnchor.constraint(equalTo: backButton.topAnchor),
            registerLabel.leadingAnchor.constraint(equalTo: backButton.trailingAnchor, constant: 20),
            
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 5),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 1300),
            
            footnoteLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            footnoteLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20)
        ])
    }
    
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func textFieldDidChange() {
    }
    
    @objc func didTapRegisterButton() {
        navigationController?.pushViewController(MainTabBarViewController(), animated: true)
    }
    
    @objc func toggleCheckboxSelection() {
        mRadioButton.isSelected = !mRadioButton.isSelected
        
        if mRadioButton.isSelected == true {
            fRadioButton.isSelected = false
        }
        
        if fRadioButton.isSelected == true {
            mRadioButton.isSelected = false
        }
    }
}

