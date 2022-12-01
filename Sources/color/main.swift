//
//  main.swift
//  color
//
//  Created by Баник Виталий Васильевич on 28.11.2022.
//

import Foundation
import AppKit

let arguments = CommandLine.arguments

guard arguments.count == 2,
      let hex = Hex(arguments[1])
else {
    print(AppError.badCommandFormat.localizedDescription)
    exit(0)
}
        
let semafor = DispatchSemaphore(value: .zero)
loadColor(withHex: hex) { result in
    switch result {
    case let .success(color):
        PasteboardService.set(color.xcodeString)
        print("\(color.xcodeString)")
        print("Copied to pasteboard!")
        
    case let .failure(error):
        print(error.localizedDescription)
    }
    semafor.signal()
}

semafor.wait()
