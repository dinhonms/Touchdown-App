//
//  NavBarDetailView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct NavBarDetailView: View {
    //MARK: - PROPERTIES
    var backAction: () -> Void
    var cartAction: () -> Void
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                backAction()
            } label: {
                Image(systemName: "chevron.left")
            }

            Spacer()
            
            Button {
                cartAction()
            } label: {
                Image(systemName: "cart")
            }
        }
        .font(.title)
        .foregroundStyle(.white)
    }
}

#Preview {
    NavBarDetailView(backAction: {}, cartAction: {})
        .background (
            colorBackground
        )
}
