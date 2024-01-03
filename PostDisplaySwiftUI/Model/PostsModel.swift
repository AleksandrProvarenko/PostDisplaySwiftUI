//
//  PostsModel.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 03.01.2024.
//

import Foundation

struct AllPostsModel: Codable {
    let posts: [PostMainModel]
}

struct PostMainModel: Codable {
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

struct PostDetailsResponse: Codable {
    let post: PostIdModel
}

struct PostIdModel: Codable {
    let postID: Int
    let timeshamp: Int
    let title: String
    let text: String
    let postImage: String
    let likesCount: Int
    
    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case timeshamp, title, text, postImage
        case likesCount = "likes_count"
    }
}
