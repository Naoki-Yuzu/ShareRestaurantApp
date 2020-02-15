//
//  ViewController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/13.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aView = SignupView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        self.view.addSubview(aView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        aView.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.frame.size.width - view.safeAreaInsets.left - view.safeAreaInsets.right, height: view.frame.size.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
    }


}

