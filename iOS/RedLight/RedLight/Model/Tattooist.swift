//
//  Tattooist.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation
import UIKit

struct Tattooist: Decodable {

    var name: String
    var imageUrl: String
    var tattooistId: String
}

// Extension to match the codingKeys from the jsonResponse with the struct elements.
extension Tattooist {
    enum StructKeys: String, CodingKey {
        case name = "Name"
        case imageUrl = "ImageUrl"
        case tattooistId = "TattooistId"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StructKeys.self)

        let source: String = try container.decode(String.self, forKey: .name)
        let imageUrl: String = try container.decode(String.self, forKey: .imageUrl)
        let value: String = try container.decode(String.self, forKey: .tattooistId)

        self.name = source
        self.imageUrl = imageUrl
        self.tattooistId = value
    }
}
