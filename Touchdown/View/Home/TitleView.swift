//
//  TitleView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 07/11/23.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    @State var title: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
    }
}
