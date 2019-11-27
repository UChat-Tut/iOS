//
//  LaunchScreen.swift
//  Uchat Tut App
//
//  Created by Vadim  Gorbachev on 25.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = UIColor(red: 0.775, green: 0, blue: 0, alpha: 1)
    }
    
    
}
