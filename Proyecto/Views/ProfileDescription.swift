//
//  ProfileDescription.swift
//  Proyecto
//
//  Created by Gdaalumno on 07/12/23.
//

import SwiftUI

struct ProfileDescription: View {
    let profile: Person
    let columns = Array(repeating: GridItem(.flexible()), count:2 )
    var body: some View {
        ScrollView {
            PersonProfilePicture(profilePictureUrl: profile.profilePic, name: profile.nombre)
            
            LeadingAlignedText(text: "Hobbies")
                .font(.headline)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()),
                                     count: 2)) {
                ForEach(profile.hobbies, id: \.hashValue) { hobby in //usado Hash para hacer una estructura no identificable identificable
                    GroupBox { //mete el texto en una cajita gris
                    Text(hobby)
                            .frame(maxWidth: .infinity)
                    }
                    
                }
            }
                                     .padding(.horizontal) //solo le aplica el padding a los elementos horizontales
            Divider()//una linea horizontal para organizar sesiones
            
            LeadingAlignedText(text: "Projects")
                .font(.headline)
            
            LazyVGrid(columns: self.columns) {
                ForEach(profile.projects) { project in
                    GroupBox {
                        NavigationLink {
                            ProjectDetailView(project: project)
                        } label: {
                            GroupBox {
                                Text(project.title)
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                }
            
            }
        }
    }
}

struct ProfileDescription_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileDescription(profile: Person.myProfile)
        }
        
    }
}

struct LeadingAlignedText: View {
    let text:  String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
        }
        .padding()
    }
}
//vertical grid (LazyVGrid) le vamos a pasar una forma especifica en la que queremos que organize los elementos. Lo que hace es acomodar los elementos de izquierda a derecha como nosotros le indiquemos de manera vertical. Por ejemplo, si tenemos 4 elementos, los aacomoda en una misma fila. Basicamente acomoda las filas verticalmente
//hay 3 tipos de grid item vara el vertical grid. Grid item flexible (es un elemento que puede crecer o disminuir en tamaño conforme lo necestie (nosotros solo ponemo un minimo y un maximo), adaptive: como el flexible pero es necesario el tener una medida minima de tamaño que puede usar y fixed: a diferencia de los otros 2 tiene un tamaño que no tiene la capacidad de crecer o disminuir
