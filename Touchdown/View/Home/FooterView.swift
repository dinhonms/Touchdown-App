//
//  FooterView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 01/11/23.
//

import SwiftUI

struct FooterView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Text("We offer th most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .layoutPriority(2)
                
            Image("logo-lineal")
                .renderingMode(.template)
                .layoutPriority(0)
            
            Text("Copyright @ Mundo Software \n All right reserved")
                .fontWeight(.bold)
                .layoutPriority(1)
        }//VStack
        .multilineTextAlignment(.center)
        .foregroundColor(.gray)
        .font(.footnote)
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
