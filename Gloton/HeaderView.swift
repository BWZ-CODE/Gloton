//
//  HeaderView.swift
//  Gloton
//
//  Created by Miguel Angel Bohorquez on 8/03/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(Circle())
                .padding(.vertical)
            VStack(alignment: .leading, spacing: 6){
                Text("Miguel Angel Bohorquez")
                    .font(.headline)
                    
                Text("@mabohore")
                    .font(.caption)
                    
            }
        }
    }
}

#Preview {
    HeaderView()
}
