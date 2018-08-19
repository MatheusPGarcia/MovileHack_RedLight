//
//  TattooistDetails.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import Foundation

struct TattooistDetails: Decodable {

    let tattooistId: String?

    let name: String?
    let description: String?
    let avatarUrl: String?
    let studio: String?

    let email: String?
    let phone: String?

    let facebookUrl: String?
    let instagramUrl: String?
    let pinterest: String?

    let urlHighlightsTattoos: [String]?

    let score: Float?

    let location: String?
}

extension TattooistDetails {
    enum JsonKeys: String, CodingKey {

        case tattooistId = "id"

        case name = "name"
        case description = "description"
        case avatarUrl = "avatar"
        case studio = "studio"

        case email = "email"
        case phone = "phone"

        case facebookUrl = "facebook"
        case instagramUrl = "instagram"
        case pinterest = "pinterest"

        case urlHighlightsTattoos = "portifolio"

        case score = "score"

        case location = "location"
    }

    // Infers custom keys to match in decode to generate Movie types
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: JsonKeys.self)

        let tattooistId = try container.decode(String.self, forKey: .tattooistId)

        let name = try container.decode(String.self, forKey: .name)
        let description = try container.decode(String.self, forKey: .description)
        let avatarUrl = try container.decode(String.self, forKey: .avatarUrl)
        let studio = try container.decode(String.self, forKey: .studio)

        let email = try container.decode(String.self, forKey: .email)
        let phone = try container.decode(String.self, forKey: .phone)

        let facebookUrl = try container.decode(String.self, forKey: .facebookUrl)
        let instagramUrl = try container.decode(String.self, forKey: .instagramUrl)
        let pinterest = try container.decode(String.self, forKey: .pinterest)

        let urlHighlightsTattoos = try container.decode([String].self, forKey: .urlHighlightsTattoos)

        let score = try container.decode(Float.self, forKey: .score)

        let location = try container.decode(String.self, forKey: .location)

        self.tattooistId = tattooistId

        self.name = name
        self.description = description
        self.avatarUrl = avatarUrl
        self.studio = studio

        self.email = email
        self.phone = phone

        self.facebookUrl = facebookUrl
        self.instagramUrl = instagramUrl
        self.pinterest = pinterest

        self.urlHighlightsTattoos = urlHighlightsTattoos

        self.score = score

        self.location = location
    }
}
