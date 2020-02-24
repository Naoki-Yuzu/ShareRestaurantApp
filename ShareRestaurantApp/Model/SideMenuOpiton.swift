//
//  SideMenuOpiton.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/24.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

enum SideMenuOption: Int, CustomStringConvertible  {
    
    case Profile
    case Signout
    
    var description: String {
        switch self {
        case .Profile: return "プロフィール"
        case .Signout: return "ログアウト"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "profile_icon")?.withTintColor(.white) ?? UIImage()
        case .Signout: return UIImage(named: "sign_out_icon")?.withTintColor(.white) ?? UIImage()
        }
    }
}
