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
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    
    func fetchPosts() {
        
        errorMessage = nil
        isLoading = true
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let decodedPosts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        self.posts = decodedPosts
                    }
                } catch {
                    self.errorMessage = "Failed to decode JSON"
                    print("Decoding error: \(error)")
                    print(self.errorMessage ?? "virhe")
                }
            }
            
        }.resume()
    }
}

//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
//            print("Invalid URL")
//            return
//        }
