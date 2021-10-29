//
//  Menu.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct MenuSection: Codable {
    var categories: [MenuItem]
}

struct MenuItem: Codable, Identifiable {
    var id: UUID
    var title: String
}
