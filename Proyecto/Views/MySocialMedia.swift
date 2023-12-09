//
//  MySocialMedia.swift
//  Proyecto
//
//  Created by Gdaalumno on 07/12/23.
//

import SwiftUI

struct MySocialMedia: View {
    let socialMedia: [SocialMedia]
    
    var body: some View {
        List {
            ForEach(socialMedia) {media in
                Link(destination: URL(string: media.url) ??
                     URL (string:"www.google.com")!) //esto manda a un link en automatico en caso de que el usuario ingrese un link invalido
                {
                    HStack {
                        Image(media.iconName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                        Text(media.media)
                    }
                }
            }
        }
    }
}

struct MySocialMedia_Previews: PreviewProvider {
    static var previews: some View {
        MySocialMedia(socialMedia: SocialMedia.mySocialMedia)
    }
}

