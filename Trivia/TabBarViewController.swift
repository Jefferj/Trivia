//
//  TabBarViewController.swift
//  Trivia
//
//  Created by Jefferson Naranjo rodríguez on 21/09/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstTabTitle = "Categories"
        let firstTabImage = UIImage(systemName: "list.dash")
        
        let firstTabViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        firstTabViewController.title = firstTabTitle
        
        let firstTabNavigationController = UINavigationController(rootViewController: firstTabViewController)
        
        firstTabViewController.tabBarItem = UITabBarItem(title: firstTabTitle, image: firstTabImage, selectedImage: nil)
        
        
        let secondTabViewController = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
        secondTabViewController.title = "Random"
        
       
        let secondTabNavigationController = UINavigationController(rootViewController: secondTabViewController)
        
        secondTabViewController.tabBarItem = UITabBarItem(title: "Random", image: UIImage(systemName: "shuffle"), selectedImage: nil)
        
        
        viewControllers = [firstTabViewController, secondTabViewController]


    }
}
