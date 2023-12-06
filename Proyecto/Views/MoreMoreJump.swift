//
//  MoreMoreJump.swift
//  Proyecto
//
//  Created by Gdaalumno on 05/12/23.
//

import SwiftUI

struct MoreMoreJump: View {
    @State private var isToggleOn = true
    @State private var texto = " "
    
    var body: some View {
        
        
        //VStack { //Apilan elementos vertical o horizontalmente lo pone en el medio
        ScrollView {
            Text("Bernardo")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.green)
            Text("Me gusta Swift!")
            Text(" ")
            Circle()
                .frame(width: 50.0, height: 50.0)
            //tanto las figuras geometricas como las imagenes y otros elementos van a intentar abarcar el mayor espacio posible
            Rectangle()
                .frame(height: 40.0)
                .padding(20) //Pone bordes alrededor de la figura
            RoundedRectangle(cornerRadius: 50)
                .frame(height: 300.0)
            Toggle(isOn: $isToggleOn) {
                    Text("En clase")
            }//dice que esta variable cada vez que actualiza su valor actualizarà la interfaz
            TextField("Cuadro de texto", text: $texto)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .opacity(0.2)
                )
            Text("Texto de ejemplo")
                .frame(height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.red)
                )
                .font(.title)
        }
        .padding() //aplica pading a todo el documento
    }
}

struct MoreMoreJump_Previews: PreviewProvider {
    static var previews: some View {
        MoreMoreJump()
    }
}
