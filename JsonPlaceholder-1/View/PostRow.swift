//
//  PostRow.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 31.12.2025.
//

import SwiftUI

struct PostRow: View {
    let post: Post
    let imageSize: CGFloat = 100
    
    var body: some View {
        HStack {
            
            if post.image?.url != nil {
                AsyncImage(url: URL(string: post.image!.url)) { phase in
                    if let image = phase.image {
                        image.resizable()
                            .scaledToFill()
                            .frame(width: imageSize, height: imageSize)
                            .clipped()
                        
                     } else if phase.error != nil {
                         Text(phase.error?.localizedDescription ?? "error")
                             .foregroundColor(Color.pink)
                             .frame(width: imageSize, height: imageSize)
                     } else {
                        ProgressView()
                             .frame(width: imageSize, height: imageSize)
                     }
                    
                }
            } else {
                Color.gray.frame(width: imageSize, height: imageSize)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(post.title)
                    .font(.headline)
//                Text(post.body)
//                    .font(.callout)
            }
        }
    }
}

//#Preview {
//    PostRow(post: Post.example1())
//}
