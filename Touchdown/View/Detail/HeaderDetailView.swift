//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .background (
            colorBackground
        )
}
