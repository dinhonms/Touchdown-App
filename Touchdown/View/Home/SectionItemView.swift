//
//  SectionItemView.swift
//  Touchdown
//
//  Created by Nonato Sousa on 06/11/23.
//

import SwiftUI

struct SectionItemView: View {
    //MARK: - PROPERTIES
    @State var rotateClockwise = false
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Spacer()
            Text("categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            Spacer()
        }//HStack
        .rotationEffect(Angle(degrees: rotateClockwise ? 90.0 : -90.0))
        .frame(width: 140, height: 140)
        .background(colorGray.cornerRadius(12))
        
    }
}

//MARK: - PREVIEW
struct SectionItemView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            colorBackground
                .ignoresSafeArea()
            SectionItemView(rotateClockwise: false)
                .frame(width: 240, height: 240, alignment: .center)
        }
    }
}
