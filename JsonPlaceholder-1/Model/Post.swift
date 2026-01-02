//
//  Post.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 31.12.2025.
//

import Foundation

struct Post: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    let image: PostImages?
    
    init(userId: Int, id: Int, title: String, body: String, image: PostImages?) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
        self.image = image
    }
    
//    init(userId: Int, id: Int, title: String, body: String) {
//        self.userId = userId
//        self.id = id
//        self.title = title
//        self.body = body
//    }
    
    static func example1() -> Post {
        Post(userId: 1,
             id: 1,
             title: "Otsikko",
             body: "Leipäteksti",
             image: PostImages(albumId: 1, id: 1, title: "Otsikko", url: "https://via.placeholder.com/600/92c952", thumbnailUrl: "https://via.placeholder.com/150/92c952")
        )
    }
    
}

