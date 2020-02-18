//
//  MapView.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/17.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class MapView: UIView {
    
//    var delegate: SideMenuControllerDelegate?
    
    var menuButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        delegate = self as? SideMenuControllerDelegate
        self.backgroundColor = .blue
//        menuButton = OriginalButton(image: UIImage(named: "menu_icon")!)
//        menuButton.addTarget(self, action: #selector(handleMenuToggle), for: .touchUpInside)
        
//        self.addSubview(menuButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
//        print("good morinig")
//        menuButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        menuButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
//        menuButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100).isActive = true
//        menuButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
//        menuButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
//        menuButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
//    @objc func handleMenuToggle() {
//
//        delegate?.handelMenuToggle()
//
//    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
