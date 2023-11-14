//
//  Constant.swift
//  Touchdown
//
//  Created by Nonato Sousa on 01/11/23.
//

import SwiftUI

//DATA
let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")

//COLOR
let colorBackground = Color("ColorBackground")
let colorGray = Color(.systemGray4)
var sampleProduct = products[0]

//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
var topInset: CGFloat {
    return UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0.0
}

//UX
//API
//IMAGE
//STRING
//MIST
