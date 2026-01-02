//
//  PostImages.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 31.12.2025.
//

import Foundation

struct PostImages: Codable, Identifiable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}

//    let height: Int
//    let width: Int

//"albumId": 1,
//    "id": 1,
//    "title": "accusamus beatae ad facilis cum similique qui sunt",
//    "url": "https://via.placeholder.com/600/92c952",
//    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
