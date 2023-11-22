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
    
    var buttonAction: () -> Void
//    var buttonActionWithParameter: (String) -> Void
    
    //MARK: - BODY
    var body: some View {
        Button {
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
            sampleProduct.backgroundColor
        )
        .clipShape(Capsule())
        
    }
}

//MARK: - PREVIEW
#Preview {
    ExpandableButtonView(buttonAction: {}) // method with parameter: buttonActionWithParameter: { _ in})
        .padding(.horizontal)
}