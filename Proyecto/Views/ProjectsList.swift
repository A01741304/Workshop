//
//  ProjectsList.swift
//  Proyecto
//
//  Created by Gdaalumno on 08/12/23.
//

import SwiftUI
//la barra de bùsqueda
struct ProjectsList: View {
    @State private var searching = " "
    
    let projects: [Project]
    var filteredProjects: [Project] {
        if searching.isEmpty {
            return projects
        }
        return projects.filter { project in
            project.title.clean().contains(searching
                .clean())
        }
    }
    
    var body: some View {
        NavigationView { //este se pone para tener un lugar donde poner nuestra barra de busqueda
            List(filteredProjects) {
                project in NavigationLink {
                    ProjectDetailView(project: project)
                    
                } label: {
                    VStack(alignment: .leading) {
                    HStack {
                        Text(project.title)
                            .font(.title3)
                        .bold()
                        
                        Spacer()//da espacio entre el titulo y el rating
                        
                        Text(project.rating, format: .number)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    Text(project.description)
                        .lineLimit(1) //limita las lineas del text
                    }
                }
            }
            .navigationTitle("Projects")
            .searchable(text: $searching)
            
        }
    }
}

struct ProjectsList_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsList(projects: Person.myProfile.projects)
    }
}
