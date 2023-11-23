//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 22/11/23.
//

import SwiftUI

struct ExpandableButtonView: View {
    //MARK: - PROPERTIES
    @State var buttonName = "add to cart"
    @EnvironmentObject var shop: Shop
    
    var buttonAction: () -> Void
//    var buttonActionWithParameter: (String) -> Void
    
    //MARK: - BODY
    var body: some View {
        Button {
            haptic.impactOccurred()
            buttonAction()
        } label: {
            Spacer()
            Text("\(buttonName.uppercased())")
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(.vertical, 10)
                .frame(minWidth: 200)
            Spacer()
        }
        .background(
            shop.selectedProduct?.backgroundColor ?? sampleProduct.backgroundColor
        )
        .clipShape(Capsule())
        
    }
}

//MARK: - PREVIEW
#Preview {
    ExpandableButtonView(buttonAction: {}) // method with parameter: buttonActionWithParameter: { _ in})
        .environmentObject(Shop())
        .padding(.horizontal)
}
