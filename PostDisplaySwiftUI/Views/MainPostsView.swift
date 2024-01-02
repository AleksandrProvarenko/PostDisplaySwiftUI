//
//  MainPostsView.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 02.01.2024.
//

import SwiftUI

struct MainPostsView: View {

    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                DispalayPostInfoView()
            }, label: {
                ListRowView()
            })
            .buttonStyle(PlainButtonStyle())
            .navigationTitle("Posts")
        }
    }
}

#Preview {
    MainPostsView()
}
