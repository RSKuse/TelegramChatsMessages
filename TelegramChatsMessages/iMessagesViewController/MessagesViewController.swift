//
//  MessagesViewController.swift
//  TelegramChatsMessages
//
//  Created by Reuben Simphiwe Kuse on 2023/07/05.
//

import Foundation

import UIKit

class MessagesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    lazy var iMessageTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorInset = UIEdgeInsets(top: 0.0, left: 100, bottom: 0.0, right: 0.0)
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        registerCells()
        
    }
    func setupUI() {
        view.addSubview(iMessageTableView)
        
        iMessageTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        iMessageTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        iMessageTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        iMessageTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
    
    func registerCells() {
        iMessageTableView.register(MessagesTableViewCell.self,forCellReuseIdentifier: "MessagesTableViewCellID")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let iMessageCell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCellID",for: indexPath) as! MessagesTableViewCell
        return iMessageCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}





