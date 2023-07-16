//
//  WelcomeViewController.swift
//  LogInDesign
//
//  Created by Peiyun on 2023/7/10.
//

import UIKit

class WelcomeViewController: UIViewController,UINavigationControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let previousViewController = viewController as? ViewController {
            previousViewController.cleanTextField()
        }
    }
    
}
