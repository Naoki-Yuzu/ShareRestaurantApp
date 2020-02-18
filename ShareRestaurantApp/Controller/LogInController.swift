//
//  LogInController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/18.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit
import Firebase

class LogInController: UIViewController {
    
    var logInView = LogInView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        logInView.delegate = self
        view.addSubview(logInView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        logInView.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.frame.size.width - view.safeAreaInsets.left - view.safeAreaInsets.right, height: view.frame.size.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LogInController: LogInViewDelegate {
    
    func toggleSignUpView() {
        navigationController?.popViewController(animated: true)
    }
    
}
