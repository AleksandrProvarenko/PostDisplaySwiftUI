//
//  DispalayPostInfoView.swift
//  PostDisplaySwiftUI
//
//  Created by Alex Provarenko on 02.01.2024.
//

import SwiftUI

struct DispalayPostInfoView: View {
    
    var title = "Title"
    var article = "As you take a look back at some of the articles below, we cannot overstate how much we appreciate your readership and patronage of our work this past year."
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Image("Christmas")
                        .resizable()
                        .scaledToFit()
                    Text(title)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text(article)
                    HStack {
                        Image(systemName: "heart")
                        Spacer()
                        Text("3 days ago")
                    }
                }
            }
            Spacer()
    }
}

#Preview {
    DispalayPostInfoView()
}
