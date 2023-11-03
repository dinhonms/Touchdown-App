//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Nonato Sousa on 03/11/23.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        //1 - locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle!")
        }
        
        //2 - wrap the file into a data property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to wrap data from \(url)!")
        }
        
        //3 - create a decoder
        let decoder = JSONDecoder()
        
        //4 - decode data into a property wrapper
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode data from \(file)!")
        }
        
        return decodedData
    }
}
