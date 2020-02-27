//
//  ProfileViewController.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/25.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Properties
    var profileView: ProfileView!
    var imageViewTapGesture: UITapGestureRecognizer!
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavAndView()
    }
    
    // MARK: - Helper Functions
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        profileView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
//        profileView.frame = CGRect(x: view.bounds.origin.x, y: view.safeAreaInsets.top + (navigationController?.navigationBar.bounds.size.height)!, width: view.bounds.width, height: view.bounds.height - (navigationController?.navigationBar.bounds.size.height)!)
    }
    
    func configureNavAndView() {
        
        navigationController?.navigationBar.barTintColor = .lightGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "プロフィール"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: self, action: #selector(dismissView))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登録", style: .plain, target: self, action: #selector(registerUserInfo))
        
        view.backgroundColor = .white
        profileView = ProfileView()
        view.addSubview(profileView)
        configureImageTapGesture() // 50行目
        
    }
    
    func configureImageTapGesture() {
        
        print("configure image tap gesture..")
        imageViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(openPhotoLibrary))
        profileView.userImage.isUserInteractionEnabled = true
        profileView.userImage.addGestureRecognizer(imageViewTapGesture)
        
    }
    
    func configureImagePicker() {
        
        print("configure image picker..")
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    // MARK: - Selectors
    @objc func dismissView() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func registerUserInfo() {
        
        print("did tap..")
        if profileView.userNameTextFeild.text == "" {
            
            print("No")
            let alertController = UIAlertController(title: "エラー", message: "ユーザー名が記入されていません", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
        } else {
            print("Ok")
        }
        
    }
    
    @objc func openPhotoLibrary() {
        
        print("image view was tapped..")
        configureImagePicker() // 59行目
        
    }
    
}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else { return }
        print("did select..")
        profileView.userImage.image = pickedImage
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("did cancel..")
        dismiss(animated: true, completion: nil)
    }
    
}
