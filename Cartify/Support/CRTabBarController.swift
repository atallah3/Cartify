//
//  CRTabBarController.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 01/05/2024.
//

import UIKit

class CRTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemRed
        viewControllers = [createHomeNC(),createShopNC(),createBagNC(),createFavoriteNC(),createProfileNC()]
    }
    
    
    func createHomeNC()-> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        return UINavigationController(rootViewController: homeVC)
    }
    
    
    func createShopNC()-> UINavigationController {
        let shopVC = ShopVC()
        shopVC.title = "Shop"
        shopVC.tabBarItem = UITabBarItem(title: "Shop", image:  UIImage(systemName: "cart"),tag: 1)
        
        return UINavigationController(rootViewController: shopVC)
    }
    
    
    func createBagNC()-> UINavigationController {
        let bagVC = BagVC()
        bagVC.title = "Bag"
        bagVC.tabBarItem = UITabBarItem(title: "Bag", image: UIImage(systemName: "bag"), tag: 2)
        
        return UINavigationController(rootViewController: bagVC)
    }
    
    
    func createFavoriteNC()-> UINavigationController {
        let favoriteVC = FavoriteVC()
        favoriteVC.title = "Favorites"
        favoriteVC.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "heart"), tag: 3)
        
        return UINavigationController(rootViewController: favoriteVC)
    }
    
    
    func createProfileNC()-> UINavigationController{
        let profileVC = ProfileVC()
        profileVC.title = "Profile"
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), tag: 4)
        
        return UINavigationController(rootViewController: profileVC)
    }
}
