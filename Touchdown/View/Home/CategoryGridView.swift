//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 06/11/23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(header: SectionItemView(), footer: SectionItemView(rotateClockwise: true)) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            }//Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//Scroll
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            colorBackground
                .ignoresSafeArea()
            CategoryGridView()
        }
    }
}
