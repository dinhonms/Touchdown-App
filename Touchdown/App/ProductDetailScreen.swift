//
//  ProductDetailScreen.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct ProductDetailScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavBarDetailView()
                .padding(.top, topInset)
            
            HeaderDetailView()
            
            Spacer()
        })//VStack
        .padding(.horizontal)
        .ignoresSafeArea()
        .background(
            sampleProduct.backgroundColor.ignoresSafeArea()
        )
    }
}

#Preview {
    ProductDetailScreen()
}
