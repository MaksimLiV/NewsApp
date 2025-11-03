//
//  HomeViewController.swift
//  NewsApp
//
//  Created by Maksim Li on 26/10/2025.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    private var hasUnreadNotifications: Bool = false {
        didSet {
            updateNotificationButtonColor()
        }
    }
    
    private lazy var notificationButton: UIBarButtonItem = {
        let button = UIBarButtonItem(
            image: UIImage(systemName: "bell.fill"),
            style: .plain,
            target: self,
            action: #selector(notificationButtonTapped)
            
        )
        button.tintColor = .systemGray
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSearchController()
        setupNavigationBar()
        
    }
    
    private func setupSearchController() {
        searchController.searchBar.placeholder = "Search news..."
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    @objc private func notificationButtonTapped() {
        print ("Notification button tapped")
    }
    
    private func setupNavigationBar () {
        navigationItem.rightBarButtonItem = notificationButton
    }
    
    private func updateNotificationButtonColor() {
        if hasUnreadNotifications {
            notificationButton.tintColor = .systemRed
        } else {
            notificationButton.tintColor = .systemGray
        }
    }
    
    func simulateNewNotification() {
           hasUnreadNotifications = true
       }
}

