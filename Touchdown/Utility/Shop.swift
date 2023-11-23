//
//  Shop.swift
//  Touchdown
//
//  Created by Nonato Sousa on 23/11/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: ProductModel? = nil
}
