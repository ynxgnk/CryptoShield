//
//  TabBarViewController.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear /* 2 */
    
        let homeVC = UINavigationController(rootViewController: HomeViewController()) /* 3 */
        let newsVC = UINavigationController(rootViewController: NewsViewController()) /* 3 */
        let chatVC = UINavigationController(rootViewController: ChatViewController()) /* 3 */
        let profileVC = UINavigationController(rootViewController: ProfileViewController()) /* 3 */
        
        homeVC.tabBarItem.image = UIImage(systemName: "house") /* 4 */
        newsVC.tabBarItem.image = UIImage(systemName: "newspaper") /* 4 */
        chatVC.tabBarItem.image = UIImage(systemName: "message") /* 4 */
        profileVC.tabBarItem.image = UIImage(systemName: "person") /* 4 */
        
        homeVC.title = "Home" /* 4 */
        newsVC.title = "News" /* 4 */
        chatVC.title = "Chats" /* 4 */
        profileVC.title = "Profile" /* 4 */
        
        
        tabBar.tintColor = .label /* 4 */
        
        setViewControllers([homeVC, newsVC, chatVC, profileVC], animated: true)  /* 4 */
    }

}
