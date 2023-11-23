//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 17/11/23.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//VStack
            .offset(y: isAnimating ? -50 : -70)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: isAnimating ? 0 : -35)
        })//HStack
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

//MARK: - PREVIEW
#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
