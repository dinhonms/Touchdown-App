//
//  QuantityFavouriteView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 22/11/23.
//

import SwiftUI

struct QuantityFavouriteView: View {
    //MARK: - PROPERTIES
    @State private var quantityToBuy: Int = 0
    
    private var maxQuantity = 50
    
    private func addItem() {
        if quantityToBuy < maxQuantity {
            quantityToBuy += 1
        }
    }
    
    private func removeItem() {
        if quantityToBuy > 0 {
            quantityToBuy -= 1
        }
    }
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                haptic.impactOccurred()
                removeItem()
            } label: {
                Image(systemName: "minus.circle")
            }

            Text("\(quantityToBuy)")
                .fontWeight(.semibold)
                .font(.title)
            
            Button {
                haptic.impactOccurred()
                addItem()
            } label: {
                Image(systemName: "plus.circle")
            }
            Spacer()
            Button {
                haptic.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }

        }//HStack
        .font(.system(size: 36, design: .rounded))
        .foregroundStyle(.black)
    }
}

//MARK: - BODY
#Preview {
    QuantityFavouriteView()
        .padding(.horizontal)
}
