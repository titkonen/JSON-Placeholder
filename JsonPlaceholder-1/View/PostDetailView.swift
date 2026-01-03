//
//  PostDetailView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 2.1.2026.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text(post.title)
                    .font(.headline)
                Text(post.body)
                    .font(.default)
                
                
            }
        }
    }
}

#Preview {
    PostDetailView(post: Post.example1())
}
