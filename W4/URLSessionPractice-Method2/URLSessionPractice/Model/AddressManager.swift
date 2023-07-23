//
//  AddressManager.swift
//  URLSessionPractice
//
//  Created by Peiyun on 2023/7/17.
//

import Foundation


protocol AddressManagerDelegate {
    func didUpdateAddressManager(addressManager: AddressManager, address: AddressData)
    //將錯誤從管理器中傳遞出去
    func didFailWithError(error: Error)
}


struct AddressManager {
    
    var delegate:AddressManagerDelegate?
    
    func getAdress(){
        let addressURL = "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station"
        
        if let url = URL(string: addressURL){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {
                data, response, error in
                if let error = error {
                    self.delegate?.didFailWithError(error: error)
                    return
                }
                if let safeData = data {
                    if let address = self.parseJSON(safeData){
                        self.delegate?.didUpdateAddressManager(addressManager: self, address: address)
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func parseJSON(_ data:Data)->AddressData?{
        //建立解碼器
        let decoder = JSONDecoder()
        do{
            //從AddressData分解資料
            let decodedData = try decoder.decode(AddressData.self, from: data)
            //取得地址
            let id = decodedData.stationID
            let name = decodedData.stationName
            let address = decodedData.stationAddress
            
            let addressData = AddressData(stationID: id, stationName: name, stationAddress: address)
            return addressData
        }catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}

