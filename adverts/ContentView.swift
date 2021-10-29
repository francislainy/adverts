//
//  ContentView.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    let root = Bundle.main.decode(CategorySection.self, from: "categories.json")
    
    var body: some View {
        NavigationView {
            List {
                let category = root.categories
                ForEach(category) { c in
                    NavigationLink(destination: SubCategoryView()) {
                        Text(c.title)
                    }
                }
            }
            .navigationTitle("Menu")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}


