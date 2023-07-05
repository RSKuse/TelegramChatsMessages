//
//  ViewController.swift
//  TelegramChatsMessages
//
//  Created by Reuben Simphiwe Kuse on 2023/07/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
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
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatCell = tableView.dequeueReusableCell(withIdentifier: "ChatsTableViewCellID",for: indexPath) as! ChatsTableViewCell
        return chatCell
    }


}
