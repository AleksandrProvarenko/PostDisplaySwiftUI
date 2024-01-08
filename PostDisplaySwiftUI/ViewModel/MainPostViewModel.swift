//
//  MainPostViewModel.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 03.01.2024.
//

import Foundation

final class MainPostViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    var manager = ManagerAPICall()
    
     func fetchPost() async {
        
        do {
            let result = try await manager.fetchData()
            await MainActor.run {
                posts = result.posts
            }
            
        } catch {
            print(error)
        }
    }
}

