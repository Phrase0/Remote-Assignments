//
//  ViewController.swift
//  URLSessionPractice
//
//  Created by Peiyun on 2023/7/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stationID: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAdress()
    }
    
    func getAdress(){
        
        let addressURL = "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station"
        
        if let url = URL(string: addressURL){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {
                data, response, error in
                if let error = error {
                    print(error)
                    return
                }
                guard let safeData = data else { return }
                    //建立解碼器
                    let decoder = JSONDecoder()
                    do{
                        //從AddressData分解資料
                        let decodedData = try decoder.decode(AddressData.self, from: safeData)
                        //取得地址
                        DispatchQueue.main.async {
                            self.stationID.text = decodedData.stationID
                            self.stationName.text = decodedData.stationName
                            self.stationAddress.text = decodedData.stationAddress
                        }
                    } catch {
                        print("decode error")
                    }
            }
            task.resume()
        }
    }
}




