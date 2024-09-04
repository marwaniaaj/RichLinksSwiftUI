//
//  ContentView.swift
//  RickLinks
//
//  Created by Marwa Abou Niaaj on 04/09/2024.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
            }

            .navigationTitle("Rick Links")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        // TODO: Show AddNewLinkSheet
                    } label: {
                        Label("Add Link", systemImage: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
