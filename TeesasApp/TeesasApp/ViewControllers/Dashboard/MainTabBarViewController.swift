//
//  MainTabBarViewController.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        tabBar.tintColor = .label
        configureTabs()
    }
    
    func configureTabs(){
        
        let viewController1 = UINavigationController(rootViewController: HomeViewController())
        let viewController2 = UINavigationController(rootViewController: BookmarkViewController())
        let viewController3 = UINavigationController(rootViewController: NotificationViewController())
        let viewController4 = UINavigationController(rootViewController: MoreViewController())
        
        let parentArrayOfVC: [UIViewController] = [viewController1, viewController2, viewController3, viewController4]
        
        viewController1.tabBarItem.image = UIImage(systemName: "house")
        viewController2.tabBarItem.image = UIImage(systemName: "bookmark")
        viewController3.tabBarItem.image = UIImage(systemName: "bell")
        viewController4.tabBarItem.image = UIImage(systemName: "ellipsis.circle")
        
        viewController1.title = "Home"
        viewController2.title = "Bookmark"
        viewController3.title = "Notification"
        viewController4.title = "More"
        
        setViewControllers(parentArrayOfVC, animated: true)
    }

}
