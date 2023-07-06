//
//  ProfileViewController.swift
//  TelegramChatsMessages
//
//  Created by Reuben Simphiwe Kuse on 2023/07/05.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController  {
    //create a var that holds the same type to one you nav
    var chat: ChatModel?
    
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75.0
        imageView.image = UIImage(named: "Vegeta")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var titleNameLabel: UILabel = {
        let label = UILabel()
         label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
         label.textColor = UIColor.black
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
    }()
    
    lazy var quoteMessageLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.bold)
        label.textColor = UIColor.red
        label.textAlignment = .center
        label.numberOfLines = 6
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        profileImageView.image = chat?.senderImage
        titleNameLabel.text = chat?.senderName
        quoteMessageLabel.text = chat?.senderLastMessage
        
    }
    
    func setupUI() {
        view.addSubview(profileImageView)
        view.addSubview(titleNameLabel)
        view.addSubview(quoteMessageLabel)
        
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        titleNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleNameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10).isActive = true
        
        quoteMessageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        quoteMessageLabel.topAnchor.constraint(equalTo: titleNameLabel.bottomAnchor, constant: 10).isActive = true
        quoteMessageLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -20).isActive = true
    }
    
}
