//
//  ViewController.swift
//  RickAndMorty
//
//  Created by tatkaciran on 26.01.2023.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabBarController: UITabBarController {
    
    let TabBarViewContents: [TabBarViewContent] = [
        TabBarViewContent(tag: 1,
                       viewController: RMCharacterViewController(),
                       title: "Characters",
                       systemName: "person"),
        TabBarViewContent(tag: 2,
                       viewController: RMLocationViewController(),
                       title: "Locations",
                       systemName: "globe"),
        TabBarViewContent(tag: 3,
                       viewController: RMEpisodeViewController(),
                       title: "Episodes",
                       systemName: "tv"),
        TabBarViewContent(tag: 4,
                       viewController: RMSettingsViewController(),
                       title: "Settings",
                       systemName: "gear"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers(
            TabBarViewContents.map({$0.toNavigationController()}),
            animated: true)
    }
}
