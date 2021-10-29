//
//  ContentView.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Text(section.name)
                    ForEach(section.items) { item in
                        Text(item.name)
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
