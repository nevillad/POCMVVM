//
//  HLURLSession.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 26/09/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import Foundation

class HLURLSession: NSObject, URLSessionDelegate, URLSessionDataDelegate {
    static let shared = HLURLSession()
    private var session = URLSession()
    
    override init() {
        super.init()
        let sessionConfig = URLSessionConfiguration.default
        self.session = URLSession(configuration: sessionConfig, delegate: self, delegateQueue: OperationQueue())
    }
    
    func callServiceWithUrlString(urlString: String, completions: @escaping(Data) -> (), onError:@escaping (Error) -> () ) {
        
        let url = URL(string: urlString)!
        var urlRequest = URLRequest(url: url)
        
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "GET"
        
        let dataTask = session.dataTask(with: urlRequest) { [weak self] data, response, error  in
            
            defer {
                
            }
            
            if let error = error {
                print(error)
            }else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                print(response)
                completions(data)
            }
            
            
        }
        dataTask.resume()
       
    }
    
}
