//
//  File.swift
//  LogInDesign
//
//  Created by Peiyun on 2023/7/11.
//

import UIKit
extension ViewController{

    func alert(name:String){
        let alert = UIAlertController(title: "Error", message: "\(name) should not be empty", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            
        })
        alert.addAction(action)
        present(alert, animated:  true)
    }
    
    func alert(totalMessage:String){
        let alert = UIAlertController(title: "Error", message: "\(totalMessage)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            
        })
        alert.addAction(action)
        present(alert, animated:  true)
    }
}
