//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 14/11/23.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Protective Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
        .background (
            colorBackground
        )
}
