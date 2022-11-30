//
//  AppError.swift
//  color
//
//  Created by Баник Виталий Васильевич on 28.11.2022.
//

import Foundation

enum AppError: Error {
    
    case badCommandFormat
    case invalidUrl
    case invalidResponse
    case someError(message: String)
}

extension AppError: LocalizedError {
    
    var localizedDescription: String {
        switch self {
        case .badCommandFormat:
            return "Valid command format ->\ncolor f2f7ff"
            
        case .invalidUrl:
            return "Invalid Url"
            
        case .invalidResponse:
            return "Invalid response"
            
        case let .someError(message):
            return message
        }
    }
}
