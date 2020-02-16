//
//  OriginalButton.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/16.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class OriginalButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    init(title: String, titleColor: UIColor, fontAndSize: UIFont) {
        super.init(frame: CGRect())
        super.setTitle(title, for: .normal)
        super.setTitleColor(titleColor, for: .normal)
        super.backgroundColor = UIColor(red: 0/255, green: 128/255, blue: 128/255, alpha: 1)
        super.layer.cornerRadius = 10
        super.layer.shadowOpacity = 0.5
        super.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        super.titleLabel?.font = fontAndSize
    }
    
    // アイコンを使う時用のイニシャライザ
    init(image: UIImage) {
        super.init(frame: CGRect())
        super.setImage(image, for: .normal)
        super.contentMode = .scaleAspectFit
    }

    
    /* 親クラスに定義されている必須イニシャライザ */
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
