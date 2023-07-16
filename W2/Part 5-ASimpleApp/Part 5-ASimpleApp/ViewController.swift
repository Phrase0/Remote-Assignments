//
//  ViewController.swift
//  Part 5: A Simple App
//
//  Created by Peiyun on 2023/7/3.
//

import UIKit

class ViewController: UIViewController {
    
    let text=[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    let color = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    @IBAction func showAnotherFunFact(_ sender: UIButton) {
        let random = Int.random(in: 0...6)
        textLabel.text = text[random]
        view.backgroundColor = color[random]
        buttonLabel.tintColor = color[random]
    }
    
    
    
    
}

