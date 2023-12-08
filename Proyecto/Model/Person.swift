//
//  Person.swift
//  Proyecto
//
//  Created by Gdaalumno on 06/12/23.
//

import Foundation

struct Person  {
   
    var nombre: String
    var profilePic: String
    var hobbies: [String]
    var projects: [Project]
    var socialMedia: [SocialMedia]
    var photos: [String]

    
    
}

extension Person {
    static let myProfile = Person(nombre: "Aguilar Meza, V.",
                                  profilePic: "https://i.postimg.cc/65vsMbhq/110957702.jpg",
                                  hobbies: ["Coding", "Running", "Drawing", "Reading"],
                                  projects: Project.myProjects,
                                  socialMedia: SocialMedia.mySocialMedia,
                                  photos: [ "https://i.postimg.cc/d0dmXdx8/i-Stock-683198946.jpg", "https://i.postimg.cc/qvNGsWcD/portada2-292.jpg"])
}


