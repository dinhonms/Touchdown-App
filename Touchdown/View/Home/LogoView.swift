//
//  LogoView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 01/11/23.
//

import SwiftUI

struct LogoView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text("Touch")
                .font(.title3)
                .fontWeight(.black)
                
            Image("logo-dark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            
            Text("Down")
                .font(.title3)
                .fontWeight(.black)
        }
        .foregroundColor(.black)
    }
}

//MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
