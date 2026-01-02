import UIKit
import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

//let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
let urlPhotos = URL(string: "https://jsonplaceholder.typicode.com/photos")!

let task = URLSession.shared.dataTask(with: urlPhotos) { data, response, error in
    
    let jsonDecoder = JSONDecoder()
    if let data = data, let post = try? jsonDecoder.decode(Post.self, from: data) {
        print(post)
    }
    
}
//let task = URLSession.shared.dataTask(with: url) { data, response, error in
//    
//    let jsonDecoder = JSONDecoder()
//    if let data = data, let post = try? jsonDecoder.decode(Post.self, from: data) {
//        print(post)
//    }
//    
//}
task.resume()
