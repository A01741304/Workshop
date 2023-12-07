//
//  Proyect.swift
//  Proyecto
//
//  Created by Gdaalumno on 06/12/23.
//

import Foundation

struct Project:Identifiable {
    let id: String = UUID().uuidString //esto garaniza que siempre al crear un proyecto nuevo este va a tener un identificador unico
    var tittle: String
    var description: String
    var rating: Float
    var photos: [String]
}

extension Project {
    static let myProjects = [
        Project(tittle: "SwiftUI Course",
                description: "Learned app development with 15 other people in Swift using SwiftUI",
                rating: 5,
                photos: [])
    ]
}
