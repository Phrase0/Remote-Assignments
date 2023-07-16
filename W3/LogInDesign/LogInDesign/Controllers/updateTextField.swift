//
//  TextFieldSet.swift
//  LogInDesign
//
//  Created by Peiyun on 2023/7/11.
//

import UIKit
extension ViewController{
    //TextField設定
    func updateTextField(checkLabelColor: UIColor, checkTextColor:UIColor, isUserInteractionEnabled :Bool){
        checkLabel.textColor = checkLabelColor
        checkText.backgroundColor = checkTextColor
        checkText.isUserInteractionEnabled = isUserInteractionEnabled
        cleanTextField()
    }
    
    func cleanTextField(){
        accountText.text = ""
        passwordText.text = ""
        checkText.text = ""
    }
    
}

