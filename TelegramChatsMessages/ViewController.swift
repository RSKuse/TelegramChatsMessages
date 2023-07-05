//
//  ViewController.swift
//  TelegramChatsMessages
//
//  Created by Reuben Simphiwe Kuse on 2023/07/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var chatsArray: [ChatModel] = [ChatModel(senderImage: UIImage(named: "Android 16")!, senderName: "Arnold Schwarzenegger", senderLastMessage: "Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength. Hasta la vista, baby!", lastMessageTimeStamp: "Sat")]
 
    lazy var telegramTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Chats"
        setupUI()
        registerCell()
      
    }
    
    func setupUI() {
        view.addSubview(telegramTableView)
        
        telegramTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        telegramTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        telegramTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        telegramTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    func registerCell() {
        telegramTableView.register(ChatsTableViewCell.self, forCellReuseIdentifier: "ChatsTableViewCellID")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatCell = tableView.dequeueReusableCell(withIdentifier: "ChatsTableViewCellID",for: indexPath) as! ChatsTableViewCell
        chatCell.senderImageView.image = chatsArray[indexPath.row].senderImage
        chatCell.nameLabel.text = chatsArray[indexPath.row].senderName
        chatCell.recentMessageLabel.text = chatsArray[indexPath.row].senderLastMessage
        chatCell.timeStampLabel.text = chatsArray[indexPath.row].lastMessageTimeStamp
        return chatCell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
