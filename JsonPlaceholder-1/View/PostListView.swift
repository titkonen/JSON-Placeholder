//
//  PostListView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 2.1.2026.
//

import SwiftUI

struct PostListView: View {
    let posts: [Post]
    @State private var searchText: String = ""
    
    var filteredPosts: [Post] {
        if searchText.count == 0 {
            return posts
        } else {
            return posts.filter { $0.title.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredPosts) { post in
                    NavigationLink {
//                        BreedDetailView(breed: breed)
                    } label: {
                        PostRow(post: post)
//                        PostRow(post: post)
                    }
                }
            }
//            List { post in
//                PostRow(post: post)
//            }
        }
        .navigationTitle("Fetched Items")
//        .onAppear() {
//            fetcherViewModel.fetchPosts()
//            print(fetcherViewModel.fetchPosts())
//        }
    }///.navView
    
}

#Preview {
    PostListView(posts: FetcherViewModel().posts)
}
