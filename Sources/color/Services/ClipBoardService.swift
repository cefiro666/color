//
//  File.swift
//  
//
//  Created by Баник Виталий Васильевич on 30.11.2022.
//

import Foundation
import AppKit

final class PasteboardService {
    
    static func set(_ string: String) {
        let pasteboard = NSPasteboard.general
        pasteboard.declareTypes([.string], owner: nil)
        pasteboard.setString(
            string,
            forType: .string
        )
    }
}
