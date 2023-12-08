//
//  SocialMedia.swift
//  Proyecto
//
//  Created by Gdaalumno on 06/12/23.
//

import Foundation

struct SocialMedia:Identifiable {
    let id = UUID().uuidString
    var media: String
    var url: String
}

extension SocialMedia {
    static let mySocialMedia = [
        SocialMedia(media: "Github", url: "https://github.com/A01741304
    ")
    ]
}
