//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 01/11/23.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .overlay(alignment: .topTrailing) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 12, height: 12, alignment: .center)
                    }
            }

        }//HStack
        .font(.title)
        .foregroundColor(.black)
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .padding(.horizontal)
    }
}
