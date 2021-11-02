//
//  ThirdView.swift
//  adverts
//
//  Created by Campos, Francislainy on 29/10/2021.
//

import SwiftUI

struct ThirdView: View {
    
    struct Categories: Codable {
        var categories: [Category]
    }
    
    struct Category: Codable {
        var id: String
        var title: String
    }
    
    @State private var results = [Category]()
    
    var body: some View {
        List(results, id: \.id) { item in
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
            }
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let url = URL(string: "https://mysterious-castle-56200.herokuapp.com/api/adverts/category") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Categories.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.results = decodedResponse.categories
                    }
                    
                    // everything is good, so we can exit
                    return
                }
            }
            
            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    
    struct SubCategoryView_Previews: PreviewProvider {
        static var previews: some View {
            ThirdView()
        }
    }
    
}
