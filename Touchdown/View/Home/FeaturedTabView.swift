//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 03/11/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players){ player in
                FeaturedItemView(player: player)
            }
        }//: TabView
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .padding(.top, 10)
            .padding(.horizontal, 15)
            .background(Color.gray)
    }
}
