//
//  SubCategories.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct SubCategorySection: Codable {
    var subCategories: [SubCategoryItem]
}

struct SubCategoryItem: Codable, Identifiable {
    var id: UUID
    var title: String
}
