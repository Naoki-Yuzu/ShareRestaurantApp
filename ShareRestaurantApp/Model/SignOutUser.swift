//
//  SignOutUser.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/19.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import Firebase

class SignOutUser {
    
    func signOutUser(completion: () -> Void) {
        
        do {
            
            try Auth.auth().signOut()
            print("did sign out..")
            completion()
            
        } catch let error {
            
            print(error.localizedDescription)
            
        }
    }
    
}
