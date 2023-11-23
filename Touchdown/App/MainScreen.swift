//
//  ContentView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 01/11/23.
//

import SwiftUI

struct MainScreen: View {
    //MARK: - PROPERTIES
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    @EnvironmentObject var shop: Shop
    
    private func showProductDetail(selectedProduct: ProductModel) {
        withAnimation(.easeOut) {
            shop.showingProduct = true
            shop.selectedProduct = selectedProduct
        }
    }
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if !shop.showingProduct && shop.selectedProduct == nil {
                VStack {
                    NavigationBarView()
                        .padding(EdgeInsets(top: safeAreaInsets.top, leading: 15, bottom: 5, trailing: 15))
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack (spacing: 0) {
                            FeaturedTabView()
                                .frame(height: 300)
                                .padding(.horizontal, 15)
                            
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, alignment: .leading, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product, buttonAction: showProductDetail)
                                }//ForEach
                            }//LazyVGrid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView()
                            
                        }//: VStack
                    })//: ScrollView
                    
                }//VStack
                .background(
                    colorBackground
                        .ignoresSafeArea(.all, edges: .all)
                )
            } else {
                ProductDetailScreen()
            }//:
        }//ZStack
        .ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .environmentObject(Shop())
    }
}
