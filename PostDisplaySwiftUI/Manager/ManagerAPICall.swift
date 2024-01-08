//
//  ManagerAPICall.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 05.01.2024.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidData
    case invalidResponse
}

class ManagerAPICall {
    
    func fetchData() async throws -> MainPosts {
        let urlString = "https://raw.githubusercontent.com/anton-natife/jsons/master/api/main.json"
        guard let url = URL(string: urlString) else { throw NetworkError.invalidURL}
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let responce = response as? HTTPURLResponse, responce.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            let posts = try decoder.decode(MainPosts.self, from: data)
            print(posts)
            return posts
        } catch {
            print(error)
            throw NetworkError.invalidData
        }
    }
}
