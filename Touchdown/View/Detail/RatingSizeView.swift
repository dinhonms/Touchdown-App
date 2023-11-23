//
//  RatingSizeView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 22/11/23.
//

import SwiftUI

struct RatingSizeView: View {
    //MARK: - PROPERTIES
    let sizes = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                HStack(spacing: 3) {
                    ForEach(0...4, id: \.self) { item in
                        Button {
                            haptic.impactOccurred()
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundStyle(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundStyle(colorGray)
                                )
                        }
                    }//Loop
                }//HStack
            })//VStack
            Spacer()
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                HStack(spacing: 3) {
                    ForEach(sizes, id: \.self) { item in
                        Button {
                            haptic.impactOccurred()
                        } label: {
                            Text(item)
                                .foregroundStyle(colorGray)
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 2)
                                        .foregroundStyle(colorGray)
                                )
                        }
                    }//Loop
                }//HStack
            }//VStack
        }//HStack
    }
}

//MARK: - PREVIEW
#Preview {
    RatingSizeView()
        .padding(.horizontal)
}
