//
//  ContentView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 01/11/23.
//

import SwiftUI

struct MainScreen: View {
    //MARK: - PROPERTIES
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(EdgeInsets(top: safeAreaInsets.top, leading: 15, bottom: 5, trailing: 15))
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, y: 5)
                Spacer()
                FooterView()
            }//VStack
            .background(
            colorBackground
                .ignoresSafeArea(.all, edges: .all)
        )
        }//ZStack
        .ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
