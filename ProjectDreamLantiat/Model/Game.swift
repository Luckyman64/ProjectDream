//
//  Game.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI
import Foundation

struct Game{
    let id: String
    let name: String
    let descriptionPreview: String
    let thumbUrl: URL?
    let imageUrl: URL?
}
extension Game: Codable{
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case descriptionPreview = "description_preview"
        case thumbUrl = "thumb_url"
        case imageUrl = "image_url"
    }
}

struct Games: Codable{
    let games: [Game]
}

extension Game: Identifiable, Hashable{}
