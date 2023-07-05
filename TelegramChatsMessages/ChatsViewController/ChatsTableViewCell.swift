//
//  ChatsTableViewCell.swift
//  TelegramChatsMessages
//
//  Created by Reuben Simphiwe Kuse on 2023/07/05.
//

import Foundation

import UIKit

class ChatsTableViewCell: UITableViewCell {
    
    lazy var senderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 32.0
        imageView.backgroundColor = .red
        //imageView.image = UIImage(named: "Android 16")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        label.textColor = UIColor.black
        //label.text = "Arnold Schwarzenegger"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var recentMessageLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        //label.text = "Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength. Hasta la vista, baby!"
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeStampLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        label.textAlignment = .right
        //label.text = "Sat"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var friendLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, recentMessageLabel])
        stackView.distribution = .fillProportionally
        stackView.spacing = 4.0
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    func setupUI() {
        addSubview(senderImageView)
        addSubview(timeStampLabel)
        addSubview(friendLabelStackView)
        
        senderImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        senderImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        senderImageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        senderImageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        
        timeStampLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: senderImageView.topAnchor).isActive = true
        //timeStampLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        friendLabelStackView.leftAnchor.constraint(equalTo: senderImageView.rightAnchor, constant: 16).isActive = true
        friendLabelStackView.rightAnchor.constraint(equalTo: timeStampLabel.leftAnchor).isActive = true
        friendLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        //friendLabelStackView.topAnchor.constraint(equalTo: senderImageView.topAnchor).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
