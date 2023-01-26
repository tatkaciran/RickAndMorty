//
//  TabBarViewInfo.swift
//  RickAndMorty
//
//  Created by tatkaciran on 26.01.2023.
//

import UIKit

struct TabBarViewContent {
    let tag: Int
    let viewController: UIViewController
    let title: String
    let systemName: String
    
    init(tag: Int,
         viewController: UIViewController,
         title: String,
         systemName: String) {
        
        self.tag = tag
        self.viewController = viewController
        self.title = title
        self.systemName = systemName
        self.viewController.title = title
        self.viewController.navigationItem.largeTitleDisplayMode = .automatic
    }
    
    func toNavigationController() -> UINavigationController {
        let nc = UINavigationController(rootViewController: self.viewController)
        nc.navigationBar.prefersLargeTitles = true
        nc.tabBarItem = UITabBarItem(
            title: title,
            image: UIImage(
            systemName: systemName),
            tag: tag
         )
        return nc
    }
    
    
}
