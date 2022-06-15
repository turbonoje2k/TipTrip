//
//  DecoderGeneric.swift
//  Tiptrip
//
//  Created by noje on 11/05/2022.
//

import Foundation

extension Bundle {
    
    func decode<T: Decodable>(_ file: String) -> T {
        // search the document
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //load the document
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from Bundle.")
        }
        
        let decoder = JSONDecoder()
        //parse the document
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        return loaded
    }
}
