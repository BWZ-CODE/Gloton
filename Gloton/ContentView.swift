//
//  ContentView.swift
//  Gloton
//
//  Created by Miguel Angel Bohorquez on 5/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    @AppStorage("darkMode") var isDarkMode = false
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                
                
                TabView {
                    
                    VStack {
                        
                        
                        //                TabView{
                        //                    Text("Recetas").tabItem{
                        //                        Image(systemName: "list.bullet").font(.system(size: 20))
                        //                    }.badge(2)
                        //
                        //                    Text("Perfil").tabItem{
                        //                        Image(systemName: "person.circle").font(.system(size: 20))
                        //                    }.badge(3)
                        //                }
                        Text("¿Que quieres cocinar?").padding().font(.title).fontWeight(.bold).multilineTextAlignment(.center)
                        HStack{
                            Image(systemName: "magnifyingglass").padding(10)
                            TextField("Birria de res", text: .constant(""))
                        }.background(Color.gray.opacity(0.3)).cornerRadius(10).shadow(radius: 8).padding()
                        VStack{
                            Text("Pensados para ti").padding().font(.title2).fontWeight(.bold).frame(maxWidth: .infinity,  alignment: .leading)
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack{
                                    VStack(alignment: .leading){
                                        Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 110, height: 100).clipShape(Circle())
                                        Text("Arroz con leche").multilineTextAlignment(.center)
                                    }.frame(width:150, height:150)
                                    VStack(alignment: .leading){
                                        Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 110, height: 100).clipShape(Circle())
                                        Text("Arroz con leche").multilineTextAlignment(.center)
                                    }.frame(width:150, height:150)
                                    VStack(alignment: .leading){
                                        Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 110, height: 100).clipShape(Circle())
                                        Text("Arroz con leche").multilineTextAlignment(.center)
                                    }.frame(width:150, height:150)
                                    VStack(alignment: .leading){
                                        Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 110, height: 100).clipShape(Circle())
                                        Text("Arroz con leche").multilineTextAlignment(.center)
                                    }.frame(width:150, height:150)
                                }
                                
                            })
                        }.background(Color.btn.opacity(0.9)).cornerRadius(20).padding(.horizontal)
                        VStack{
                            Text("Mas populares").font(.title2).padding().fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading)
                            ScrollView(.vertical, showsIndicators: false, content: {
                                HStack{
                                    Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 100, height: 100).clipShape(Circle())
                                    Text("Receta de Pollo caramelizado con especias")
                                }
                                HStack{
                                    Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 100, height: 100).clipShape(Circle())
                                    Text("Receta de Pollo caramelizado con especias")
                                    
                                }
                                HStack{
                                    Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 100, height: 100).clipShape(Circle())
                                    Text("Receta de Pollo caramelizado con especias")
                                    
                                }
                                HStack{
                                    Image(.b59Bc74Ff811F55Fff1893910268Ab59).resizable().frame(width: 100, height: 100).clipShape(Circle())
                                    Text("Receta de Pollo caramelizado con especias")
                                    
                                }
                            })
                        }.background(Color.btn.opacity(0.9)).cornerRadius(20).padding(.horizontal).frame(height:280)
                        HStack{
                            Image(systemName: "bell.fill").font(.system(size: 25)).padding()
                            Spacer()
                            Image(systemName: "person.circle.fill").font(.system(size: 25)).padding()
                            Spacer()
                            Image(systemName: "house.fill").font(.system(size: 25)).padding()
                            Spacer()
                            Image(systemName: "globe.americas.fill").font(.system(size: 25)).padding()
                            
                            
                            
                        }.background(Color.btn.opacity(0.4)).cornerRadius(60).padding(.horizontal)
                        
                    }
                }
                contentSideMenuView(isShowing: $showMenu, selectedMenuItem: $selectedTab)
                
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action:{
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "text.justify")
                            .foregroundColor(isDarkMode ? .white : .gray)
                    })
                    
                }
            }
            
        }.padding(0)
        
    }
    
}


#Preview {
    ContentView()
}
