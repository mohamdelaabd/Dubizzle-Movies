//
//  Video.swift
//  Dubizzle-Movies-List_iOSApp
//
//  Created by El-Abd on 12/23/19.
//  Copyright © 2019 El-Abd. All rights reserved.
//
import UIKit

final class Video: Decodable {
    
    // MARK: - Keys
    
    private enum CodingKeys: String, CodingKey {
        case id
        case key
        case name
        case size
    }

    // MARK: - Properties
    
    let id: String
    let key: String
    let name: String
    let size: Int
    
    // MARK: - Computed properties
    
    var youtubeURL: URL? { return URL(string: "https://www.youtube.com/watch?v=\(self.key)") }
    
    var youtubeThumbnailURL: URL? { return URL(string: "https://img.youtube.com/vi/\(self.key)/0.jpg") }
    
    // MARK: - Initializer
    
    init(decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.key = try container.decode(String.self, forKey: .key)
        self.name = try container.decode(String.self, forKey: .name)
        self.size = try container.decode(Int.self, forKey: .size)
    }
}
