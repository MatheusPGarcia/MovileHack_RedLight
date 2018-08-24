//
//  NetworkConnection.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

class NetworkConnection {

    func fetch(by url: URL, completion: @escaping (Data) -> Void) {

        let request = URLRequest(url: url)

        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration)

        session.dataTask(with: request) { (data, _, error) in
            if let error = error {
                print("Error fetching json: \(error)")
                return
            }

            if let data = data {
                completion(data)
            }
            }.resume()
    }
}
