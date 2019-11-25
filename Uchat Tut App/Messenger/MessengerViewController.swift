//
//  ChatViewController.swift
//  Uchat Tut App
//
//  Created by Vadim  Gorbachev on 24.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

class MessengerViewController: UITableViewController {
    
    private let cellId = "chatsList"
    let friendNames = ["Алиса","Бобби", "Боб", "Роб", "Роберт", "Боберт"]
    let lastSentenses = ["Каеф", "Завтра утром посмотрю", "Окич", "Фига. Название интригующее", "Ахахах, орево", "Это тру"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        setupTableView()
    }
    
    
    
    
    // MARK: tableView methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return friendNames.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: CustomMessengerCell.reuseId, for: indexPath) as! CustomMessengerCell
        cell.friendIcon.backgroundColor = UIColor(red: 0.775, green: 0, blue: 0, alpha: 1)
        cell.friendIcon.layer.cornerRadius = cell.friendIcon.frame.height / 2
        cell.friendName.text = friendNames[indexPath.row]
        cell.lastMessageText.text = lastSentenses[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 84
    }
    
    private func setupTableView() {
        
        let nib = UINib(nibName: "CustomMessengerCell", bundle: nil)
        tableView.register( nib, forCellReuseIdentifier: CustomMessengerCell.reuseId)
    }

}


