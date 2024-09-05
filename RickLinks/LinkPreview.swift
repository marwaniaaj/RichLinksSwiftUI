//
//  LinkPreview.swift
//  RickLinks
//
//  Created by Marwa Abou Niaaj on 05/09/2024.
//

import SwiftUI
import LinkPresentation

struct LinkPreview : UIViewRepresentable {
    var previewURL: URL

    func makeUIView(context: Context) -> LPLinkView {
        let linkView = LPLinkView(url: previewURL)
        let provider = LPMetadataProvider()

        provider.startFetchingMetadata(for: previewURL) { (metadata, error) in
            guard let metadata = metadata, error == nil else { return }

            DispatchQueue.main.async {
                linkView.metadata = metadata
                linkView.sizeToFit()
            }
        }

        return linkView
    }

    func updateUIView(_ uiView: LPLinkView, context: Context) {
        // No update needed here
    }
}
