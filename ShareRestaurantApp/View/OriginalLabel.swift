//
//  OriginalLabel.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/15.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

// ラベルを使い回すためのクラス
class OriginalLabel: UILabel {
    
    init(textOfLabel: String, textColor: UIColor, fontAndSize: UIFont ) {
        super.init(frame: CGRect())
        super.text = textOfLabel
        super.textColor = textColor
        super.font = fontAndSize
    }
    
    /* 親クラスに定義されている必須イニシャライザ */
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
