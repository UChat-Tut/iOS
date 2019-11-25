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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        setupTableView()
    }
    
    
    
    
    // MARK: tableView methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 6
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: CustomMessengerCell.reuseId, for: indexPath) as! CustomMessengerCell
        cell.friendIcon.backgroundColor = .red
        cell.friendIcon.layer.cornerRadius = cell.friendIcon.frame.height / 2
        
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


