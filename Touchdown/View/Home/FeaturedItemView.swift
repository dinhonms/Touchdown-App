//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 03/11/23.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    let player: PlayerModel
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
    }
}
