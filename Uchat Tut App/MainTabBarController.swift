//
//  ViewController.swift
//  Uchat Tut App
//
//  Created by Vadim  Gorbachev on 24.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tabBar.tintColor = .red
        view.backgroundColor = .green
        
        viewControllers = []
        
    }

    // MARK: create new ViewController
    
    private func generateViewController(rootViewController: UIViewController, image: UIImage, title: String) -> UIViewController {
       
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewController.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        return navigationVC
    }
    

}

