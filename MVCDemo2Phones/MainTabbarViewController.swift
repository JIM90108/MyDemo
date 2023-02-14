//
//  MainTabbarViewController.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/1.
//

import UIKit

class MainTabbarViewController: UITabBarController {
    
    
    let ContactVC = ContactViewController()
    
    let MainVC = MainViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        ContactVC.title = "介紹"
        MainVC.title = "產品"
        self.tabBar.tintColor = UIColor.brown
        self.tabBar.backgroundColor = .black
        let navMainVC = UINavigationController(rootViewController: MainVC)
        setViewControllers([navMainVC , ContactVC], animated: false)
        


    }
    

   

}
