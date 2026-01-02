//
//  fetcherViewModel.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 31.12.2025.
//

import Foundation
import SwiftUI
import Combine

class FetcherViewModel: ObservableObject {
    @Published var posts: [Post] = []
//    @Published var photos: [PostImages] = []
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Invalid URL")
            return
        }
        
//        guard let urlPhotos = URL(string: "https://jsonplaceholder.typicode.com/photos") else {
//            print("Invalid URL")
//            return
//        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let decodedPosts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        self.posts = decodedPosts
                    }
                } catch {
                    print("Decoding error: \(error)")
                }
            }
            
        }.resume()
    }
}

//URLSession.shared.dataTask(with: url) { (data, response, error) in
//    if let data = data {
//        do {
//            let decodedPosts = try JSONDecoder().decode([Post].self, from: data)
//            DispatchQueue.main.async {
//                self.posts = decodedPosts
//            }
//        } catch {
//            print("Decoding error: \(error)")
//        }
//    }
//    
//}.resume()
