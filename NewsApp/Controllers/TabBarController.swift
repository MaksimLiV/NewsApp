//
//  TabBarController.swift
//  NewsApp
//
//  Created by Maksim Li on 30/10/2025.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
        setupTabBarProperty()
        
    }
    
    private func setupViewControllers() {
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        let favoritesVC = FavoritesViewController()
        favoritesVC.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star"), tag: 1)
        
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        let homeNav = UINavigationController(rootViewController: homeVC)
        let favoritesNav = UINavigationController(rootViewController: favoritesVC)
        let profileNav = UINavigationController(rootViewController: profileVC)
        
        viewControllers = [homeNav, favoritesNav, profileNav]
    }
    
    private func setupTabBarProperty() {
        
        tabBar.tintColor = .systemRed
        tabBar.unselectedItemTintColor = .systemGray
        tabBar.backgroundColor = UIColor(hex: "FFFFFF")
        
        // Corner settings
        tabBar.layer.cornerRadius = 32
        tabBar.layer.masksToBounds = false
        
        //Shadow settings
        tabBar.layer.shadowColor = UIColor (hex: "8C8C8C", alpha: 0.15).cgColor
        tabBar.layer.shadowOffset = CGSize(width: -2, height: 4)
        tabBar.layer.shadowOpacity = 1.0
        tabBar.layer.shadowRadius = 4
        
    }
}
