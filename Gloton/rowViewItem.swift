//
//  rowViewItem.swift
//  Gloton
//
//  Created by Miguel Angel Bohorquez on 8/03/25.
//

import SwiftUI

struct rowViewItem: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false
    
    private var isSelected: Bool {
        return option == selectedOption
    }
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
            
            Image(systemName: isSelected ? "chevron.right" : "chevron.right").imageScale(.small) 
            
        }
        .foregroundStyle(isDarkModeOn ? .white : .black)
        .padding(.leading)
        .padding(.trailing)
        .foregroundStyle(.black)
        .frame(width: 220, height: 48)
        .background(isSelected ? .gray.opacity(0.1) : Color.clear)
        .cornerRadius(24)
        
        
    }
}

#Preview {
    rowViewItem(option: .Home, selectedOption: .constant(.Home))
}
