//
//  ProductDetailScreen.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct ProductDetailScreen: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - FUNCTIONS
    private func backToHome() {
        withAnimation(.easeOut) {
            shop.showingProduct = false
            shop.selectedProduct = nil
        }
    }
    
    private func showCart() {
        
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
            NavBarDetailView(backAction: backToHome, cartAction: showCart)
                .padding(.top, topInset)
                .padding(.horizontal)
            
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //TOP PART DETAIL
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                //Rating and Sizes
                RatingSizeView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    //RATINGS and SIZES
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                })//Scroll
                
                //QUANTITY and FAVOURITE
                QuantityFavouriteView()
                    .padding(.vertical, 20)
                
                //ADD TO CART
                ExpandableButtonView(buttonAction: {})
                    .padding(.bottom, 20)
                
            })//VStack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .ignoresSafeArea()
                    .padding(.top, -105)
            )
            
            //ADD TO CHART
            
            Spacer()
        })//VStack
        .zIndex(0)
        .ignoresSafeArea()
        .background(
            shop.selectedProduct?.backgroundColor.ignoresSafeArea() ?? sampleProduct.backgroundColor.ignoresSafeArea()
        )
    }
}

#Preview {
    ProductDetailScreen()
        .environmentObject(Shop())
}
