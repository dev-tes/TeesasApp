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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}

