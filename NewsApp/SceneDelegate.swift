//
//  SceneDelegate.swift
//  NewsApp
//
//  Created by Maksim Li on 26/10/2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let homeVC = HomeViewController()
        let favoritesVC = FavoritesViewController()
        let profileVC = ProfileViewController()
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        favoritesVC.tabBarItem = UITabBarItem(title: "Favorites", image:UIImage(systemName: "heart"), tag: 1)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeVC, favoritesVC, profileVC]
        
        // Customizing appearance
        tabBarController.tabBar.tintColor = .systemRed
        tabBarController.tabBar.unselectedItemTintColor = .systemGray
        tabBarController.tabBar.backgroundColor = .white
        
        // Corner settings
        tabBarController.tabBar.layer.cornerRadius = 32
        tabBarController.tabBar.layer.masksToBounds = false
        
        //Shadow settings
        tabBarController.tabBar.layer.shadowColor = UIColor (hex: "8C8C8C", alpha: 0.15).cgColor
        tabBarController.tabBar.layer.shadowOffset = CGSize(width: -2, height: 4)
        tabBarController.tabBar.layer.shadowOpacity = 1.0
        tabBarController.tabBar.layer.shadowRadius = 4
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }
    
    
}

