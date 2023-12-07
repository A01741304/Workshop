//
//  PersonProfilePicture.swift
//  Proyecto
//
//  Created by Gdaalumno on 06/12/23.
//

import SwiftUI

struct PersonProfilePicture: View {
    let profilePictureUrl: String
    
    var pictureUrl: URL? { //signo de interrogaciòn denota opcional
        URL(string: profilePictureUrl)
    }
    
    var body: some View {
        ZStack {
            AsyncImage(url: pictureUrl) { image in
                image.image? //ya que nuestra url es opcional, por si el usuario ingresa una URL no valida que no falle todo el programa
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            }
        }
    }
}

struct PersonProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        PersonProfilePicture(profilePictureUrl:
                                Person.myProfile.profilePic)
 
    }
}
