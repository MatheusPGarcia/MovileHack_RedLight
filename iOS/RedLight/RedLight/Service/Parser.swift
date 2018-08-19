//
//  Parser.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

class Parser {

    func parseTattooistDetails(data: Data) -> DetailsContainer? {

        do {
            let string1 = String(data: data, encoding: String.Encoding.utf8) ?? "Data could not be printed"
            print(string1)

            let decoder = JSONDecoder()
            let tattooistResponse = try decoder.decode(DetailsContainer.self, from: data)

            return tattooistResponse
        } catch {
            print("\n\n\nError decoding user details JSON: \(error)\n\n\n")
        }

        return nil
    }
}
