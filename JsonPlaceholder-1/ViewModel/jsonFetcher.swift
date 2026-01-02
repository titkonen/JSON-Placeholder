//
//  jsonFetcher.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 30.12.2025.
//

import Foundation


struct APIService {
    
    func fetchJSONData() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            let jsonDecoder = JSONDecoder()
//            if let data = data {
//                do {
//                    let posts = try? jsonDecoder.decode([Post].self, from: data)
//                    print(posts)
//                } catch {
//                    print(error)
//                }
//            }
            
            if let data = data, let post = try? jsonDecoder.decode(Post.self, from: data) {
                print(post)
            }
        }
        task.resume()

    }
    
}


