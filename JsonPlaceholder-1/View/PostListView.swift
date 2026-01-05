//
//  PostListView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 2.1.2026.
//

import SwiftUI

struct PostListView: View {
    let posts: [Post]
    @StateObject private var fetcherViewModel = FetcherViewModel()
    @State private var searchText: String = ""
    
    var filteredPosts: [Post] {
        if searchText.count == 0 {
            return fetcherViewModel.posts
        } else {
            return fetcherViewModel.posts.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredPosts) { post in
                    NavigationLink {
                        PostDetailView(post: post)
                    } label: {
                        PostRow(post: post)
                    }
                }
            }
            .navigationTitle("Fetched Items")
        }
        
        .searchable(text: $searchText)
        .onAppear() {
            fetcherViewModel.fetchPosts()
//            print(fetcherViewModel.fetchPosts())
        }
    } ///.body
    
}

#Preview {
    PostListView(posts: FetcherViewModel().posts)
}
