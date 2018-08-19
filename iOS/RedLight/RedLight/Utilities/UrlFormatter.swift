//
//  UrlFormatter.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

struct UrlFormatter {

    let baseUrl: String = "https://red-light-movile-hack.appspot.com/_ah/api/redlight"
    let parameter: String

    init(parameter: String) {
        self.parameter = parameter
    }
}

extension UrlFormatter {

    public func getUrlString() -> URL {

        let urlString = "\(baseUrl)\(parameter)"

        guard let url = URL(string: urlString) else {
            fatalError("Unable to construct url")
        }

        return url
    }
}
