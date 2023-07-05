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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        profileImageView.image = chat?.senderImage
    }
    
    func setupUI() {
        view.addSubview(profileImageView)
        
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
 
    }
    
}
