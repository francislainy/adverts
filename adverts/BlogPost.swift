//
//  BlogPost.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import Foundation

struct BlogPost: Decodable {
    enum Category: String, Decodable {
        case swift, combine, debugging, xcode
    }

    let title: String
    let url: URL
    let category: Category
    let views: Int
}
