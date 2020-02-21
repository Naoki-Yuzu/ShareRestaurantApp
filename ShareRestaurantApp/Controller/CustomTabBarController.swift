//
//  CustomTabBarController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/17.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit
import Firebase

class CustomTabBarController: UITabBarController {
    
    // MARK: - Properties
    var mapViewController: UIViewController!
    var myPageViewController: UIViewController!

    // MARK: - Init
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureControllersAndTabBarItems()
    }
    
//    func authenticateUserAndConfigureView() {
//
//        if Auth.auth().currentUser == nil {
//
//            DispatchQueue.main.async {
//                print("no user..")
////                self.configureControllersAndTabBarItems()
//                print("made custom view controller..")
//                self.navigationController?.pushViewController(SignUpController(), animated: true)
////                let signUpNavController = UINavigationController(rootViewController: SignUpController())
////                signUpNavController.modalPresentationStyle = .fullScreen
////                self.present(signUpNavController, animated: true, completion: nil)
//            }
//
//        } else {
//
//            print("present user..")
//            configureControllersAndTabBarItems()
//
//        }
//
//    }
    
    func configureControllersAndTabBarItems() {
        
        mapViewController = MapViewController()
        myPageViewController = MyPageViewController()
        self.setViewControllers([mapViewController, myPageViewController], animated: true)
        mapViewController.tabBarItem = UITabBarItem(title: "Map", image: nil, tag: 0)
        myPageViewController.tabBarItem = UITabBarItem(title: "MyPage", image: nil, tag: 1)
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont.boldSystemFont(ofSize: 13)], for: .normal)
        navigationController?.isNavigationBarHidden = true
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension UITabBar {
//
//    open override func sizeThatFits(_ size: CGSize) -> CGSize {
//        var size = super.sizeThatFits(size)
//        size.height = 49.0
//        return size
//    }
//
//}