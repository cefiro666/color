//
//  File.swift
//  
//
//  Created by Баник Виталий Васильевич on 28.11.2022.
//

import Foundation

fileprivate extension String {
    
    static let hexQueryName = "hex"
    static let serverUrl = "https://www.thecolorapi.com/id"
}

func loadColor(
    withHex hex: Hex,
    handler: @escaping (Result<Color, AppError>) -> Void
) {
    var components = URLComponents(string: .serverUrl)!
    
    components.queryItems = [
        URLQueryItem(
            name: .hexQueryName,
            value: hex.value
        )
    ]
    
    guard let url = components.url else {
        handler(.failure(.invalidUrl))
        return
    }
    
    let urlRequest = URLRequest(url: url)
    
    URLSession.shared.dataTask(with: urlRequest) { (data, _, error) in
        if let error = error {
            handler(.failure(.someError(message: error.localizedDescription)))
            return
        }
        
        guard let data = data,
              let color = try? JSONDecoder().decode(Color.self, from: data)
        else {
            handler(.failure(.invalidResponse))
            return
        }
        
        handler(.success(color))
    }.resume()
}
