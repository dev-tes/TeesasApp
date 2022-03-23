//
//  PicksCollectionViewCell.swift
//  TeesasApp
//
//  Created by Tes on 23/03/2022.
//

import UIKit

class PicksCollectionViewCell: UICollectionViewCell {
    
    let identifier = "cell"
    
    // MARK: PROPERTIES
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "70% funds raised"
        label.font = UIFont.systemFont(ofSize: 8)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "50% Task Completed"
        label.font = UIFont.systemFont(ofSize: 8)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let picksImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "whatsapp")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    // MARK: SETTING CONSTRAINTS
    private func setupViews() {
        addSubview(picksImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        NSLayoutConstraint.activate([
            picksImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            picksImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            picksImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.6),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: picksImageView.trailingAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
