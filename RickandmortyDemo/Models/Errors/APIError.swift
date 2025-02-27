//  APIError.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import Foundation

enum APIError: LocalizedError {
    case invalidURL
    case reguestFailed
    case invalidResponse
    case decodingError
    case unknownError
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .reguestFailed:
            return "Request failed"
        case .invalidResponse:
            return "Invalid response"
        case .decodingError:
            return "Decoding error"
        case .unknownError:
            return "Unknown error"
        }
    }
}
