//
//  MyPageViewController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/17.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {
    
    var signOutButton: UIButton!
    var signOutUserModel = SignOutUser()
    
//    var mapView: MapView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        MapView
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .orange
        signOutButton = OriginalButton(title: "サインアウト", titleColor: .white, fontAndSize: .systemFont(ofSize: 10), backgroundColor: .black)
        signOutButton.addTarget(self, action: #selector(signOutUser), for: .touchUpInside)
        view.addSubview(signOutButton)
    }
    
    @objc func signOutUser() {
        
        print("touched button..")
        
        signOutUserModel.signOutUser {
            
            let signUpNavController = UINavigationController(rootViewController: SignUpController())
            signUpNavController.modalPresentationStyle = .fullScreen
            self.present(signUpNavController, animated: true, completion: nil)
            
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        
        signOutButton.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        
    }

}
