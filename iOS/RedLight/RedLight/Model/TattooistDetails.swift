//
//  TattooistDetails.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

class TattooistDetails: Decodable {

    let tattooistId: Int

    let name: String
    let description: String
    let avatarUrl: String
    let studio: String

    let email: String
    let phone: String

    let facebookUrl: String
    let instagramUrl: String
    let pinterest: String

    let urlHighlightsTattoos: [String]

    let score: Float

    let location: String
}
