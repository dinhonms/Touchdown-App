//
//  ProductModel.swift
//  Touchdown
//
//  Created by Nonato Sousa on 07/11/23.
//

import SwiftUI

struct ProductModel: Identifiable, Codable {
    let id, price: Int
    let name, image, description: String
    let color: [Double]
    
    var backgroundColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}
