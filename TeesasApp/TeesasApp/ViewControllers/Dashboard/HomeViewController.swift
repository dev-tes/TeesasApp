//
//  HomeViewController.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "teesasLogo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let whatsappImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "whatsapp")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let enquireLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "and"
        label.font = UIFont.systemFont(ofSize: 15)
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
    
    
    let budgetsDropdownParentView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
        constraintViews()
        
    }
    
    func constraintViews() {
        view.addSubview(logoImageView)
        view.addSubview(whatsappImageView)
//        view.addSubview(enquireLabel)
//        view.addSubview(scrollView)
//        scrollView.addSubview(contentView)
//        contentView.addSubview(footnoteLabel)
//        contentView.addSubview(nameTextField)
//        contentView.addSubview(phoneNumberTextField)
//        contentView.addSubview(emailTextField)
//        contentView.addSubview(passwordTextField)
//        contentView.addSubview(cityTextField)
//        contentView.addSubview(dateOfBirthTextField)
//        contentView.addSubview(mRadioButton)
//        contentView.addSubview(maleLabel)
//        contentView.addSubview(fRadioButton)
//        contentView.addSubview(femaleLabel)
//        contentView.addSubview(registerButton)
//        contentView.addSubview(stackView)
//
//        stackView.addArrangedSubview(privacyLabel)
//        stackView.addArrangedSubview(andLabel)
//        stackView.addArrangedSubview(tAndCLabel)
        //        contentView.addSubview(footnoteLabel)
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    
}
