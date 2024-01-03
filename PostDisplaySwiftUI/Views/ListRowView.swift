//
//  ListRowView.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 02.01.2024.
//

import SwiftUI

struct ListRowView: View {
    
    var title = "Title"
    var article = "As you take a look back at some of the articles below, we cannot overstate how much we appreciate your readership and patronage of our work this past year."
    
    var body: some View {
        List {
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(article)
                HStack {
                   
                }
            }
        }
        .listRowSeparator(.hidden)
        .listStyle(.plain)
    }
}

#Preview {
    ListRowView()
}
