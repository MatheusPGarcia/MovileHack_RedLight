//
//  DetailsContainer.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

struct DetailsContainer: Decodable {
    var items = [TattooistDetails]()
}

extension DetailsContainer {

    enum JsonKey: String, CodingKey {

        case items    }

    // Infers that the json key "Search" can be used to generate Movies type
    init(from decoder: Decoder) throws {

        let container = try decoder.container(keyedBy: JsonKey.self)
        let items = try container.decode([TattooistDetails].self, forKey: .items)
        self.items = items
    }
}
