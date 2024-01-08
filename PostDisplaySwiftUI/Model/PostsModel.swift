//
//  PostsModel.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 03.01.2024.
//

import Foundation

struct MainPosts: Codable, Identifiable {
    var id: String {
        UUID().uuidString
    }
    let posts: [Post]
}

struct Post: Codable {
    let postID: Int
    let timeshamp: Int
    let title: String
    let previewText: String
    let likesCount: Int

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case timeshamp, title
        case previewText = "preview_text"
        case likesCount = "likes_count"
    }
}
