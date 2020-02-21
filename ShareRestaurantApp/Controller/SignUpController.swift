//
//  SignUpController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/13.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit
import Firebase

class SignUpController: UIViewController {
    
    let signUpView = SignUpView()
    let signUpUserModel = SignUpUser()
//    var mapView = MapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("sign up controller..")
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
//        self.view.backgroundColor = .white
        view.addSubview(signUpView)
        signUpView.delegate = self
//        self.view.addSubview(mapView)
//        mapView.delegate = self
//        configureSideMenuController()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        signUpView.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: view.frame.size.width - view.safeAreaInsets.left - view.safeAreaInsets.right, height: view.frame.size.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
    }
    
//    func configureSideMenuController() {
//        if sideMenuController == nil {
//
//            sideMenuController = SideMenuController()
////            view.insertSubview(sideMenuController.view, at: 0)
//            view.addSubview(sideMenuController.view)
////            view.insertSubview(sideMenuController.view, aboveSubview: mapView)
////            view.addSubview(sideMenuController.view)
//            addChild(sideMenuController)
//            sideMenuController.didMove(toParent: self)
//            print("Did add menu controller..")
//
//        }
        
        /*
        let sideMenuController = SideMenuController()
        
        view.addSubview(sideMenuController.view)
        addChild(sideMenuController)
        sideMenuController.didMove(toParent: self)
        */
//    }
//
//    func showSideMenuController(shoulExpand: Bool) {
//
//        if shoulExpand {
//
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
//
//                self.sideMenuController.view.frame.origin.x = self.sideMenuController.view.frame.width - 500
//                self.mapView.frame.origin.x = self.sideMenuController.view.frame.width - 500
////                self.mapView.frame.origin.x = self.sideMenuController.view.frame.width - 500
//
//            }, completion: nil)
//
//        } else {
//
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
//
//                self.sideMenuController.view.frame.origin.x = 0
////                self.mapView.frame.origin.x = 0
//
//            }, completion: nil)
//
//        }
//
//    }


}

extension SignUpController: SignUpViewDelegate {
    
    func togglelogInView() {
        navigationController?.pushViewController(LogInController(), animated: true)
    }
    
    func showAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    
    func signUpUser(withEmail email: String, password: String) {
        
        print("while sign up")
        // パターン1 use trailing closure
        signUpUserModel.signUpUser(withEmail: email, password: password) {
//            self.dismiss(animated: true, completion: nil)
            self.signUpUserModel.sendEmail() {
                
                print("sent email..")
                self.navigationController?.pushViewController(ConfirmEmailController(), animated: true)
            
            }
            
            
        }
        
        /* パターン2 don't use trailing closure
        signUpUserModel.signUpUser(withEmail: email, password: password, completion: {self.dismiss(animated: true, completion: nil)})
        */
        
    }
    
}

