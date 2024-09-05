//
//  ContentView.swift
//  RickLinks
//
//  Created by Marwa Abou Niaaj on 04/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var links = [
        "https://not-valid-url", // --> Invalid URL
        "https://developer.apple.com/tutorials/swiftui/", // --> Valid URL
        "https://expatexplore.com/blog/when-to-travel-weather-seasons/", // --> URL that does not contain image
    ]

    @State private var useCustomPreview = true

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(links, id:\.self) { link in
                    if useCustomPreview {
                        LinkItemView(link: link)
                    }
                    else if let url = URL(string: link) {
                        LinkPreview(previewURL: url)
                            .aspectRatio(contentMode: .fit)
                            .padding(4)

                    }
                }
                .padding()
            }
            .navigationTitle("Rick Links")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
