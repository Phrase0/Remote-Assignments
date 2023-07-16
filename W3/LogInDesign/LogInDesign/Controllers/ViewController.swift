//
//  ViewController.swift
//  LogInDesign
//
//  Created by Peiyun on 2023/7/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkText: UITextField!
    
    var currentSegment = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountText.delegate = self
        passwordText.delegate = self
        checkText.delegate = self
        updateTextField(checkLabelColor: .darkGray, checkTextColor: .darkGray, isUserInteractionEnabled: false)
    }
    
    //切換畫面
    @IBAction func accountChange(_ sender: UISegmentedControl) {
        //log in登入
        if sender.selectedSegmentIndex == 0{
            currentSegment = 0
            updateTextField(checkLabelColor: .darkGray, checkTextColor: .darkGray, isUserInteractionEnabled: false)
            //sign up註冊
        }else if sender.selectedSegmentIndex == 1{
            currentSegment = 1
            updateTextField(checkLabelColor: .black, checkTextColor: .white, isUserInteractionEnabled: true)
        }
    }
    

    @IBAction func button(_ sender: UIButton) {
        //log in登入
        switch currentSegment  {
        case 0:
            if accountText.text == "" {
                alert(name: "Account")
            }else if passwordText.text == "" {
                alert(name: "Password")
            }else{
                if accountText.text == "appworks_school",passwordText.text == "1234"{
                    performSegue(withIdentifier: "enterNextStep", sender: nil)
                }else{
                    alert(totalMessage: "Log in fail, Incorrect account or password.")
                }
            }
        //sign up註冊
        case 1:
            if checkText.text == "" {
                alert(name: "check Password")
            }else if accountText.text == "" {
                alert(name: "Account")
            }else if passwordText.text == "" {
                alert(name: "Password")
            }else{
                if let password = passwordText.text?.count, password < 4{
                    alert(totalMessage: "Signup fail, password must be at least 4 characters long.")
                }else if checkText.text != passwordText.text {
                    alert(totalMessage: "Verify password matches check password")
                }
                else{
                    performSegue(withIdentifier: "enterNextStep", sender: nil)
                }
            }
        default:
            return
        }
    }
}


//MARK: - textFieldDelegate
extension ViewController:UITextFieldDelegate{
    
    //當點擊view任何一處鍵盤收起
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    //關閉鍵盤
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


