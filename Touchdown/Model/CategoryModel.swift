//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Nonato Sousa on 06/11/23.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
