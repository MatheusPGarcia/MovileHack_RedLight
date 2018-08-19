//
//  NetworkConnection.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

class NetworkConnection {

    class func fetch(url: URL, completion: @escaping (Data) -> Void) {

        let request = URLRequest(url: url)

        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration)

        session.dataTask(with: request) { (data, _, error) in

            if let error = error {
                print("Ops, something went wrong while trying to fetch with url:\n\(url)")
                print("Error: \(error)")
                return
            }

            guard let data = data else {
                print("Data is empty")
                return
            }

            completion(data)
        }
    }
}
