//
//  NFFeed.swift
//  NewFeeds
//
//  Created by Quang Phan on 21/05/2019.
//  Copyright © 2019 Quang Phan. All rights reserved.
//

import Foundation

struct NFFeed: Codable {
    let id: String
    let title: String
    let description: Int
    let dateString: String
    let type: ContentType
    let originURL: String
    let publisher: NFPublisher?
    let avatar: NFImageItem?
    let images: [NFImageItem]?
    let content: NFVideoContent?
    
    enum CodingKeys: String, CodingKey {
        case id = "document_id"
        case title
        case description
        case dateString = "published_date"
        case type = "content_type"
        case originURL = "origin_url"
        case publisher
        case avatar
        case images
        case content
    }
}

extension NFFeed {
    enum ContentType: String, Codable {
        case overview
        case story
        case gallery
        case video
        case article
        case long_form
    }
}
