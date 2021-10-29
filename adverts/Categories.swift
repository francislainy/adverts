//
//  Categories.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct CategorySection: Codable, Identifiable {
    var id: UUID
    var title: String
    var categories: [CategoryItem]
}

struct CategoryItem: Codable, Equatable, Identifiable {
    var id: UUID
    var title: String
}
