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
    var iconName: String
}

extension SocialMedia {
    static let mySocialMedia = [
        SocialMedia(media: "Github", url: "https://github.com/A01741304", iconName: "Github"),
        SocialMedia(media: "Instagram", url: "https://www.instagram.com/valeria._am21/", iconName: "Instagram"),
        SocialMedia(media: "Twitter (X)", url: "https://twitter.com/enerreloaded?lang=es", iconName: "Twitter")
    ]
}
