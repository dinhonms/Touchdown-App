//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 06/11/23.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPERTIES
    let category: CategoryModel
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                    .frame(width: 30, height: 30, alignment: .center)
                Text(category.name.uppercased())
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                Spacer()
            }
        }//HStack
        .padding()
        .background(
            Color.white.cornerRadius(12)
        )
        .background(
        RoundedRectangle(cornerRadius: 12)
            .stroke(.gray, lineWidth: 1)
        )
    }
}

//MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            colorBackground
                .ignoresSafeArea()
            CategoryItemView(category: categories[0])
                .padding()
        }
    }
}
