//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 10, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//Loop
            })//Grid
            .frame(height: 200)
            .padding(15)
        }//Scroll
    }
}

#Preview {
    BrandGridView()
        .background(
        colorBackground
        )
}
