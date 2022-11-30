//
//  Color.swift
//  color
//
//  Created by Баник Виталий Васильевич on 28.11.2022.
//

import Foundation

struct Color: Decodable {
    
    struct Name: Decodable {
        let value: String
    }
    
    struct Hex: Decodable {
        let value: String
    }
    
    let name: Name
    let hex: Hex
}

extension Color {
    
    var xcodeString: String {
        "public static let \(name.value.camelCased) = UIColor(hex: \"\(hex.value)\")!"
    }
}
