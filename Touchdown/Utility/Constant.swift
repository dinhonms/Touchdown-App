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

//COLOR
let colorBackground = Color("ColorBackground")
let colorGray = Color(.systemGray4)

//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//UX
//API
//IMAGE
//STRING
//MIST
