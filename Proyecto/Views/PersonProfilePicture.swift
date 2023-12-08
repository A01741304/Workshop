//
//  PersonProfilePicture.swift
//  Proyecto
//
//  Created by Gdaalumno on 06/12/23.
//

import SwiftUI

struct PersonProfilePicture: View {
    let profilePictureUrl: String
    let name: String
    
    var pictureUrl: URL? { //signo de interrogaciòn denota opcional
        URL(string: profilePictureUrl)
    }
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Image("Profile") //ya que nuestra url es opcional, por si el usuario ingresa una URL no valida que no falle todo el programa
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            Text(name)
                .font(.title3)
                .padding(6)
                .background(.thinMaterial, in:
                                RoundedRectangle(cornerRadius: 10))
            
        }
    }
}

struct PersonProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        PersonProfilePicture(profilePictureUrl:
                                Person.myProfile.profilePic,
                             name: Person.myProfile.nombre)
 
    }
    
    
    
}
