//
//  ContentView.swift
//  Proyecto
//
//  Created by Gdaalumno on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{ //para dejarte moverte entre tabs
            ProfileNavigation(profile: Person.myProfile)
                .tag("profile") //nombre unico para identificar esta pestaña en especifico
                .tabItem {
                    Label("My Profile", systemImage: "person.circle") //simbolo que se pondra en la aplicacion (SImbolsSF)
                }
            MySocialMedia(socialMedia: SocialMedia.mySocialMedia)
                .tag("SocialMedia")
                .tabItem{
                    Label("Social Media", systemImage: "network")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
