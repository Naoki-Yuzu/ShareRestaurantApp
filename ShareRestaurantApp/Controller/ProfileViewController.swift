//
//  ProfileViewController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/25.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Properties
    var profileView: UIView!
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavAndView()
    }
    
    // MARK: - Helper Functions
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        profileView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
//        profileView.frame = CGRect(x: view.bounds.origin.x, y: view.safeAreaInsets.top + (navigationController?.navigationBar.bounds.size.height)!, width: view.bounds.width, height: view.bounds.height - (navigationController?.navigationBar.bounds.size.height)!)
    }
    
    func configureNavAndView() {
        
        navigationController?.navigationBar.barTintColor = .lightGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "プロフィール"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: self, action: #selector(dismissView))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登録", style: .plain, target: self, action: #selector(register))
        
        view.backgroundColor = .white
        profileView = ProfileView()
        view.addSubview(profileView)
        
    }
    
    // MARK: - Selectors
    @objc func dismissView() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func register() {
        
        print("did tap..")
        
    }
    
}
