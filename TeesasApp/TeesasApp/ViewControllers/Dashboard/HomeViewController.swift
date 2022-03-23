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
        label.text = "Enquire Now"
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
    
    
    let profileView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let ibibioView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let biniView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let ijawView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let viewAllView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let geniusView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let ebookView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let chartImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chart.line.uptrend.xyaxis.circle.fill")
        imageView.tintColor = .green
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let performanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Performance Reports"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let picksLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Teesas Learning Picks for Tes"
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
        view.addSubview(logoImageView)
        view.addSubview(whatsappImageView)
        view.addSubview(enquireLabel)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(profileView)
        contentView.addSubview(ibibioView)
        contentView.addSubview(biniView)
        contentView.addSubview(ijawView)
        contentView.addSubview(viewAllView)
        contentView.addSubview(geniusView)
        contentView.addSubview(ebookView)
        contentView.addSubview(chartImageView)
        contentView.addSubview(performanceLabel)
        contentView.addSubview(picksLabel)
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
            
            whatsappImageView.topAnchor.constraint(equalTo: logoImageView.topAnchor),
            whatsappImageView.trailingAnchor.constraint(equalTo: enquireLabel.leadingAnchor, constant: -10),
            whatsappImageView.heightAnchor.constraint(equalToConstant: 40),
            whatsappImageView.widthAnchor.constraint(equalToConstant: 40),
            
            enquireLabel.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 10),
            enquireLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 5),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 1300),
            
            profileView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            profileView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            profileView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            profileView.heightAnchor.constraint(equalToConstant: 130),
            
            ibibioView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 8),
            ibibioView.trailingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -10),
            ibibioView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ibibioView.heightAnchor.constraint(equalToConstant: 120),
            
            biniView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 8),
            biniView.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 10),
            biniView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            biniView.heightAnchor.constraint(equalToConstant: 120),
            
            ijawView.topAnchor.constraint(equalTo: ibibioView.bottomAnchor, constant: 20),
            ijawView.trailingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -10),
            ijawView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ijawView.heightAnchor.constraint(equalToConstant: 120),
            
            viewAllView.topAnchor.constraint(equalTo: biniView.bottomAnchor, constant: 20),
            viewAllView.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 10),
            viewAllView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            viewAllView.heightAnchor.constraint(equalToConstant: 120),
            
            geniusView.topAnchor.constraint(equalTo: viewAllView.bottomAnchor, constant: 20),
            geniusView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            geniusView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            geniusView.heightAnchor.constraint(equalToConstant: 170),
            
            ebookView.topAnchor.constraint(equalTo: geniusView.bottomAnchor, constant: 20),
            ebookView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ebookView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            ebookView.heightAnchor.constraint(equalToConstant: 100),
            
            chartImageView.topAnchor.constraint(equalTo: ebookView.bottomAnchor, constant: 30),
            chartImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            chartImageView.heightAnchor.constraint(equalToConstant: 40),
            chartImageView.widthAnchor.constraint(equalToConstant: 40),
            
            performanceLabel.topAnchor.constraint(equalTo: chartImageView.topAnchor, constant: 10),
            performanceLabel.leadingAnchor.constraint(equalTo: chartImageView.trailingAnchor, constant: 10),
            
            picksLabel.topAnchor.constraint(equalTo: chartImageView.bottomAnchor, constant: 30),
            picksLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
        ])
    }
    
    
}
