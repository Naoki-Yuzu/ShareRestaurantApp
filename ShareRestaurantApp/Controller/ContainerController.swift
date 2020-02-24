//
//  ContainerController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/23.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    // MARK: - Properties
    var navMapViewController: UIViewController!
    var sideMenuController: UIViewController!
    var isExpansion = false
    
    // MARK: - Helper Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        navigationController?.isNavigationBarHidden = true
        configureMapViewController()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        navMapViewController.view.frame = CGRect(x: view.bounds.origin.x, y: view.bounds.origin.y, width: view.bounds.width, height: view.bounds.height)
    }
    
    func configureMapViewController() {
        
        print("configure map view controller..")
        let mapViewController = MapViewController()
        mapViewController.delegate = self
        navMapViewController = UINavigationController(rootViewController: mapViewController)
        view.addSubview(navMapViewController.view)
        addChild(navMapViewController)
        navMapViewController.didMove(toParent: self)
        
    }
    
    func configureSideMenuController() {
        if sideMenuController == nil {
            print("configure side menu controller..")
            sideMenuController = SideMenuController()
            view.insertSubview(sideMenuController.view, at: 0)
            addChild(sideMenuController)
            sideMenuController.didMove(toParent: self)
        }
    }
    
    func showSideMenu(shouldExpand: Bool) {
        if shouldExpand {
            print("show menu..")
            UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseInOut, animations: {
                self.navMapViewController.view.frame.origin.x = self.navMapViewController.view.frame.width - 80
            }, completion: nil)
        } else {
            print("hide menu..")
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                self.navMapViewController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
    
}

extension ContainerController: MapViewControllerDelegate {
    
    func showOrHideSideMenu() {
        print("came container controller..")
        
        if !isExpansion {
            configureSideMenuController()
        }
        
        isExpansion = !isExpansion
        showSideMenu(shouldExpand: isExpansion)
        
    }
    
}
