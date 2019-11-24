//
//  ViewController.swift
//  Uchat Tut App
//
//  Created by Vadim  Gorbachev on 24.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    
    
    // MARK: ViewControllers init
    private let chatVC = ChatViewController()
    private let taskManagerVC = TaskManagerViewController()
    private let calendarVC = CalendarViewController()
    private let settingsVC = SettingsViewController()
    private let libraryVC = LibraryViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tabBar.tintColor = .red
        view.backgroundColor = .white
        
        viewControllers = [
            generateViewController(rootViewController: chatVC, image: #imageLiteral(resourceName: "chatTabBarIcon"), title: "Ученики"),
            generateViewController(rootViewController: taskManagerVC, image: #imageLiteral(resourceName: "TaskManagerTabBarIcon"), title: "Список дел"),
            generateViewController(rootViewController: calendarVC, image: #imageLiteral(resourceName: "calendarTabBarIcon"), title: "Календарь"),
            generateViewController(rootViewController: libraryVC, image: #imageLiteral(resourceName: "libraryTabBarIcon"), title: "Библиотека"),
            generateViewController(rootViewController: settingsVC, image: #imageLiteral(resourceName: "settingsTabBarIcon"), title: "Профиль")
        ]
        
    }

    // MARK: add a new ViewController to the TabBarController
    
    private func generateViewController(rootViewController: UIViewController, image: UIImage, title: String) -> UIViewController {
       
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewController.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        return navigationVC
    }
    

}

