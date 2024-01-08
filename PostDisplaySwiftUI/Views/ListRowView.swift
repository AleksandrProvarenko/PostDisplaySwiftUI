//
//  ListRowView.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 02.01.2024.
//

import SwiftUI

struct ListRowView: View {
    
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(post.title)
                .font(.title2)
                .fontWeight(.medium)
            Text(post.previewText)
        }
    }
}

#Preview {
    ListRowView(post: Post(postID: 2,
                           timeshamp: 23,
                           title: "Title",
                           previewText: "Previw text",
                           likesCount: 40))
}
