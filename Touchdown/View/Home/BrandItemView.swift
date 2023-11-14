//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES
    let brand: BrandModel
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.gray, lineWidth: 1)
            )
    }
}

//MARK: - PREVIEW
#Preview {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
