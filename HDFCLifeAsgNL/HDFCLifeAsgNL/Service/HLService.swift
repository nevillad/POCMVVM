//
//  HLService.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 26/09/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import Foundation

class HLService {
    let urlSession:HLURLSession
    
    init() {
        urlSession = HLURLSession.shared
    }
    func loadProducts(completions: @escaping(Array<HLProductViewModel>) -> (), onError:@escaping (Error) -> ()) {
        let urlString = "\(HLEnvironment.current.apiDomain)\(HLService.HLConstant.apiVersion)\(HLService.HLConstant.apiProducts)"
        
        urlSession.callServiceWithUrlString(urlString: urlString, completions: { data in
            print(data)
            
            do {
                let productList = try JSONDecoder().decode(Array<Product>.self, from: data)
                print(productList.count)
                var array: Array<HLProductViewModel>? = []
                for product in productList {
                    array?.append(HLProductViewModel(product: product))
                }
                completions(array!)
                
            } catch {
                print(error.localizedDescription)
            }
            
            
            
            
            
            DispatchQueue.main.async {
              //completion(self?.tracks, self?.errorMessage ?? "")
            }
            
        }) { error in
            
        }
    }
}
