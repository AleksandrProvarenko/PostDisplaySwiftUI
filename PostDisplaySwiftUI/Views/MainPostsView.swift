//
//  MainPostsView.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 02.01.2024.
//

import SwiftUI

struct MainPostsView: View {
    
    @StateObject var vm = MainPostViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.posts, id: \.postID) { post in
                    NavigationLink(destination: {
                        DispalayPostInfoView()
                    }, label: {
                        ListRowView(post: post)
                    })
                }
                .navigationTitle("Posts")
                .buttonStyle(PlainButtonStyle())
            }
            .listStyle(InsetListStyle())
        }
        .onAppear {
            Task {
                await vm.fetchPost()
            }
        }
    }
}

#Preview {
    MainPostsView()
}
