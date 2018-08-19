//
//  TattooistControler.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

class TattooistController {

    func getAllTattooist(completion: @escaping ([TattooistDetails]) -> Void) {

        let urlFormatter = UrlFormatter(parameter: "/v1/tatuador")
        let url = urlFormatter.getUrlString()

        let network = NetworkConnection()
        network.fetch(url: url) { (data) in
            let parser = Parser()
            let result = parser.parseTattooistDetails(data: data)
            if let result = result {
                let tattooistCollection = result.items
                completion(tattooistCollection)
            }
        }
    }
}
