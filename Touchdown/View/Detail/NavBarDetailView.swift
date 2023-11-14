//
//  NavBarDetailView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct NavBarDetailView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
            }

            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
            }
        }
        .font(.title)
        .foregroundStyle(.white)
    }
}

#Preview {
    NavBarDetailView()
        .background (
            colorBackground
        )
}
