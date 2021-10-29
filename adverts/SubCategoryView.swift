//
//  SubCategoryView.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct SubCategoryView: View {
    
    let root = Bundle.main.decode(SubCategorySection.self, from: "subCategories.json")
    
    var body: some View {
        NavigationView {
            List {
                let subCategory = root.subCategories
                ForEach(subCategory) { s in
                    NavigationLink(destination: ThirdView()) {
                        Text(s.title)
                    }
                }
            }
            .navigationTitle("SecondView")
        }
    }
    
    struct SubCategoryView_Previews: PreviewProvider {
        static var previews: some View {
            SubCategoryView()
        }
    }
    
}
