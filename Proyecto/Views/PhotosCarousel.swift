//
//  PhotosCarousel.swift
//  Proyecto
//
//  Created by Gdaalumno on 08/12/23.
//

import SwiftUI

struct PhotosCarousel: View {
    let photosNames: [String]
    
    var body: some View {
        ForEach(photosNames, id: \.self) {
            photo in Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal)
        }
    }
}

struct PhotosCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PhotosCarousel(photosNames: Person.myProfile.photos)
    }
}
