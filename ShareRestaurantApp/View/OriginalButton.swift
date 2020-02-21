//
//  OriginalButton.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/16.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

// ボタンを使い回すためのクラス
class OriginalButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    // 影あり
    init(title: String, titleColor: UIColor, fontAndSize: UIFont, backgroundColor: UIColor) {
        super.init(frame: CGRect())
        super.setTitle(title, for: .normal)
        super.setTitleColor(titleColor, for: .normal)
        super.backgroundColor = backgroundColor
        super.layer.cornerRadius = 10
        super.layer.shadowOpacity = 0.5
        super.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        super.titleLabel?.font = fontAndSize
    }
    
    // 影なし
    init(title: String, titleColor: UIColor, fontAndSize: UIFont) {
        super.init(frame: CGRect())
        super.setTitle(title, for: .normal)
        super.setTitleColor(titleColor, for: .normal)
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
