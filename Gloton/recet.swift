//
//  recet.swift
//  Gloton
//
//  Created by Miguel Angel Bohorquez on 19/03/25.
//

import SwiftUI

struct recet: View {
    @State private var ingredientes:[String: Bool] = ["4 perniles o muslos de pollo" : false, "1 cucharada de mantequilla" : false, "1 diente de ajo bien picado" : false, "1 tasa de hampiñones cortados en laminas gruesas" : false, "1 lata de crema de champiñones ProgressoTM Vegetable Classics" : false, "2cucharadas de cilantro picado" : false, "Sal y pimienta al gusto" : false]
    
    
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
                    
                    Text("Pollo con champiñones").fontDesign(.rounded)
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Ingredientes").fontDesign(.rounded).font(.title2).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading).padding().padding(.horizontal)
                    
                    List {
                        ForEach(ingredientes.keys.sorted(), id: \.self) { ingrediente in
                            HStack {
                                Text(ingrediente)
                                    .font(.headline)
                                Spacer()
                                Image(systemName: ingredientes[ingrediente]! ? "checkmark.square.fill" : "square")
                                    .foregroundColor(ingredientes[ingrediente]! ? .blue : .gray)
                                    .font(.title)
                                    .onTapGesture {
                                        ingredientes[ingrediente]!.toggle()
                                    }
                            }
                            .padding(.vertical, 5)
                            }
                        }
                    .listStyle(InsetGroupedListStyle())
                        
                        
                        
                        
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
