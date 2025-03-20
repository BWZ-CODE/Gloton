//
//  recet.swift
//  Gloton
//
//  Created by Miguel Angel Bohorquez on 19/03/25.
//

import SwiftUI

struct recet: View {
    var body: some View {
        ZStack(alignment: .top) { // Alineamos el contenido arriba
                    // Imagen de fondo
            Image(.polloChampiñones)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 300) // Ajusta la altura como necesites
                        .clipped() // Para evitar que se desborde
                        .edgesIgnoringSafeArea(.top)
                    // Contenido encima de la imagen
                    VStack {
                        Spacer().frame(height: 230) // Espacio para la imagen
                        Divider().frame(height:100)
                        VStack {
                            
                            Text("Pollo con champiñones")
                                .font(.largeTitle)
                                .bold()

                            Text("Recetas como esta vienen bien en esos días en que no tenemos mucho tiempo para preparar un plato suculento. En menos de 30 minutos obtenemos unas doradas presas de pollo, cubiertas de una cremosa salsa de champiñones que te hará chupar los dedos. El toque especial lo pone el cilantro picado, aportando ese aroma y sabor latino tan anhelado en nuestros platos. Te recomiendo servir este pollo acompañado de arroz blanco o unas papas, para aprovechar al máximo la rica salsa que lo baña. Ten siempre a la mano recetas de comida rápida como ésta. Te sacará de apuros y al mismo tiempo disfrutarás de una verdadera delicia.")
                                .padding()
                            
                                .padding()
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        /*.background(Color.white)*/ // Fondo para diferenciar la sección
                        .clipShape(RoundedRectangle(cornerRadius: 20)) // Bordes redondeados
                       /* .shadow(radius: 5)*/ // Efecto de sombra
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            CircleImage(imageName: "Pollo con champiñones")
                .offset(y: 140)
                }
    }
}
struct CircleImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 10)
    }
}


#Preview {
    recet()
}
