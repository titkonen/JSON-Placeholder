//
//  ContentView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 30.12.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = FetcherViewModel()
//    @State private var searchText: String = ""
//    let posts: [Post]
    
//    var filteredPosts: [Post] {
//        if searchText.count == 0 {
//            return posts
//        } else {
//            return posts.filter { $0.title.contains(searchText)}
//        }
//    }

    var body: some View {
        NavigationView {
//            List {
//                ForEach(filteredPosts) { post in
//                    NavigationLink {
////                        BreedDetailView(breed: breed)
//                    } label: {
//                        PostRow(post: post)
//                    }
//                }
//            }
//            List(viewModel.photos) { photo in
//                VStack(alignment: .leading) {
//                    Text(photo.title)
//                    Text(photo.thumbnailUrl)
//                    Text("\(photo.id)")
//                        .font(.callout)
////                    Text("\(photo.albumId)")
////                        .font(.callout)
//                }
//                
//            }
            List(viewModel.posts) { post in
//                VStack(alignment: .leading) {
//                    Text(post.title)
//                        .font(.headline)
//                    Text(post.body)
//                        .font(.body)
//                    Text("\(post.id)")
//                        .font(.callout)
//                }
                PostRow(post: post)
                
            }
            .navigationTitle("Fetched Items")
//            .searchable(text: $searchText)
            .onAppear() {
                viewModel.fetchPosts()
                print(viewModel.fetchPosts())
            }
        }///.navView
        
    }
}

#Preview {
//    ContentView(posts: [Post.example1()])
    ContentView()
}
