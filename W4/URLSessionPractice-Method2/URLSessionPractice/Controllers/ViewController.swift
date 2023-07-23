//
//  ViewController.swift
//  URLSessionPractice
//
//  Created by Peiyun on 2023/7/17.
//

import UIKit

class ViewController: UIViewController {
    
    //建立AddressManager()物件
    var addressManager = AddressManager()
 
    @IBOutlet weak var stationID: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addressManager.delegate = self
        addressManager.getAdress()
    }
}

//MARK: - AddressManagerDelegate
extension ViewController:AddressManagerDelegate{
    func didUpdateAddressManager(addressManager: AddressManager, address: AddressData) {
        DispatchQueue.main.async {
            self.stationID.text = address.stationID
            self.stationName.text = address.stationName
            self.stationAddress.text = address.stationAddress
        }
    }
    func didFailWithError(error: Error) {
        print(error)
    }
}
