//
//  contentSideMenuView.swift
//  Gloton
//
//  Created by Miguel Angel Bohorquez on 8/03/25.
//

import SwiftUI

struct contentSideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedMenuItem: Int
    @State var selectedMenuItemIndex: SideMenuOptionModel?
    @State var darkMode = false
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false
    
    var body: some View {
        ZStack{
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                
                HStack{
                    VStack(alignment: .leading, spacing: 32.0){
                        VStack{
                            ForEach(SideMenuOptionModel.allCases){
                                option in rowViewItem(option: option, selectedOption: $selectedMenuItemIndex)
                                    .onTapGesture {
                                        onOptionTapped(option)
                                    }
                                
                            }
                            Spacer()
                            //Perfil user
                            Divider()
                            VStack(alignment:.leading){
                                HeaderView()
                                HStack{
                                    Image(systemName: "moon.fill")
                                    
                                    let texto = Text("Dark Mode").font(.footnote)
                                    
                                    Toggle("\(texto)", isOn: $isDarkModeOn)
                                    
                                    
                                    Spacer()
                                }
                                HStack{
                                    Image(systemName: "person.fill")
                                    Text("Log out").font(.footnote)
                                }
                            }
                            .padding(.leading)
                            
                        }
                    }
                    .padding().frame(width: 270, alignment: .leading).background(isDarkModeOn ? .gray : Color.white)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
                
            }
        }
        .animation(.easeInOut, value: isShowing)
    }
    private func onOptionTapped(_ option: SideMenuOptionModel) {
        selectedMenuItemIndex = option
        selectedMenuItem = option.rawValue
        isShowing = false
        
    }
    
}

#Preview {
    contentSideMenuView(isShowing: .constant(true), selectedMenuItem: .constant(0))
}

enum SideMenuOptionModel: Int, CaseIterable, Identifiable {
    case Home
    case Vegetarian
    case Vegan
    case Dip
    case AboutUs
    
    var title: String {
        switch self {
        case .Home:
            return "Home"
        case .Vegetarian:
            return "Vegetarian"
        case .Vegan:
            return "Vegan"
        case .Dip:
            return "Dip"
        case .AboutUs:
            return "About Us"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .Home:
            return "house"
        case .Vegetarian:
            return "leaf.fill"
        case .Vegan:
            return "carrot.fill"
        case .Dip:
            return "sun.min.fill"
        case .AboutUs:
            return "info.circle"
        }
    }
    var id: Int {
        rawValue
    }
}
