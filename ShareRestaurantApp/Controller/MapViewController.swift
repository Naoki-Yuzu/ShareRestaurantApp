//
//  MapViewController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/17.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    // MARK: - Properties
    var mapView: UIView!

    // MARK: - Helper Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        configureUIView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        mapView.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.frame.size.width - view.safeAreaInsets.left - view.safeAreaInsets.right, height: view.frame.size.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
        mapView.frame = CGRect(x: view.safeAreaInsets.left, y: view.frame.origin.y, width: view.frame.size.width - view.safeAreaInsets.left - view.safeAreaInsets.right, height: view.frame.size.height)
    }
    
    func configureUIView() {
        
        mapView = MapView()
        self.view.addSubview(mapView)
        print("called configureUIView in MapViewController..")
        
    }

}
