//
//  SignupView.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/13.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit

class SignupView: UIView {
    
    var emailLabel: UILabel!
    var passwordLabel: UILabel!
    var emailTextFeild: UITextField!
    var passwordTextField: UITextField!
    var conformPasswordTextFeild: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        emailTextFeild = OriginalTextField(placeholderText: "Email", textColor: .black, keybordType: .emailAddress)
        emailTextFeild.delegate = self
        emailTextFeild.addLine(position: .LINE_POSITION_BOTTOM, color: .black, width: 1)
        
        emailLabel = OriginalLabel(textOfLabel: "メールアドレス", textColor: .gray, fontSize: 10)
        
        passwordLabel = OriginalLabel(textOfLabel: "パスワード", textColor: .gray, fontSize: 10)
        
        passwordTextField = OriginalTextField(placeholderText: "パスワード", textColor: .black)
        passwordTextField.delegate = self
        passwordTextField.addLine(position: .LINE_POSITION_BOTTOM, color: .black, width: 1)

        conformPasswordTextFeild = OriginalTextField(placeholderText: "確認", textColor: .black)
        conformPasswordTextFeild.delegate = self
        conformPasswordTextFeild.addLine(position: .LINE_POSITION_BOTTOM, color: .black, width: 1)
        
        self.addSubview(emailLabel)
        self.addSubview(emailTextFeild)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(conformPasswordTextFeild)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        emailLabel.frame = CGRect(x: bounds.origin.x + 30, y: bounds.origin.y + 30, width: bounds.size.width - 100, height: 10)
        emailTextFeild.frame = CGRect(x: bounds.origin.x + 30, y: emailLabel.frame.maxY + 5, width: bounds.size.width - 100, height: 30)
        passwordLabel.frame = CGRect(x: bounds.origin.x + 30, y: emailTextFeild.frame.maxY + 30, width: bounds.size.width - 100, height: 10)
        passwordTextField.frame = CGRect(x: bounds.origin.x + 30, y: passwordLabel.frame.maxY + 5, width: bounds.size.width - 100, height: 30)
        conformPasswordTextFeild.frame = CGRect(x: bounds.origin.x + 30, y: passwordTextField.frame.maxY + 5, width: bounds.size.width - 100, height: 30)
    }

}

extension SignupView: UITextFieldDelegate {
    
    // リターンキーがタップされたらキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}

extension SignupView {
    
    // textField以外をタップしたらキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // endEditingメソッドでもキーボードを閉じることができる
        self.endEditing(true)
    }
    
}
