//
//  ImageStatus.swift
//  RickLinks
//
//  Created by Marwa Abou Niaaj on 04/09/2024.
//

import SwiftUI

enum ImageStatus {

    /// A status indicating that the view has requested a photo.
    case loading

    /// A status indicating that the view has loaded a photo.
    case finished(Image)

    /// A status indicating that the photo has failed to load.
    case failed(Error)
}

/// An error that indicates why a photo has failed to load.
enum LoadingError: Error {
    case contentUnavailable
    case contentTypeNotSupported
}
