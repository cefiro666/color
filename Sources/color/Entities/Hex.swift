//
//  Hex.swift
//  
//
//  Created by Баник Виталий Васильевич on 28.11.2022.
//

import Foundation

struct Hex {
    
    let value: String
     
    init?(_ string: String) {
        let hexSanitized = string
            .trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard hexSanitized.count == 6 else { return nil }
        
        value = hexSanitized
    }
}
