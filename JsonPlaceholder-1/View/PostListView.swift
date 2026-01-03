//
//  PostListView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 2.1.2026.
//

import SwiftUI

struct PostListView: View {
    @StateObject private var fetcherViewModel = FetcherViewModel()
    
    var body: some View {
        NavigationView {
//            List(fetcherViewModel.posts) { post in
//                PostRow(post: post)
//            }
            List {
                ForEach(fetcherViewModel.posts) { post in
                    NavigationLink {
                        PostDetailView(post: post)
                    } label: {
                        PostRow(post: post)
                    }
                }
            }
            
        }
//        .listStyle(PlainListStyle())
        .navigationTitle("Fetched Items")
        .onAppear() {
            fetcherViewModel.fetchPosts()
            print(fetcherViewModel.fetchPosts())
        }
    } ///.body
    
}

#Preview {
    PostListView()
}
