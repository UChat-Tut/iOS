//
//  CustomMessengerCell.swift
//  Uchat Tut App
//
//  Created by Vadim  Gorbachev on 25.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

class CustomMessengerCell: UITableViewCell {
    
    
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var lastMessageText: UILabel!
    @IBOutlet weak var friendIcon: UIImageView!
    
    static let reuseId = "chatsList"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        friendIcon.image = nil
    }
    
    
    
}
