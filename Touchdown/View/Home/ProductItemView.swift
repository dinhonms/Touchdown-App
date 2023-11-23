//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 07/11/23.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    @State var product: ProductModel
    var buttonAction: (ProductModel) -> Void
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Button(action: {
                    haptic.impactOccurred()
                    buttonAction(self.product)
                }, label: {
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                })
            }//ZStack
            .background(
                product.backgroundColor
            )
            .cornerRadius(25)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//VStack
    }
}

    //MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0], buttonAction: { _ in})
            .padding()
    }
}
