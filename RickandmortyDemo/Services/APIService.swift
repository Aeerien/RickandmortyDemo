//  APIService.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import Foundation
import Combine

class APIService {
    static let shared = APIService()
    private let baseURL = "https://rickandmortyapi.com/api/character"
    private var cache = NSCache<NSString, NSArray>()
    
    func fetchCharacters() -> AnyPublisher<[Character], APIError> {
        if let cachedCharacters = cache.object(forKey: "characters" as NSString) {
            return Just(cachedCharacters as? [Character] ?? [])
                .setFailureType(to: APIError.self)
                .eraseToAnyPublisher()
        }
        
        guard let url = URL(string: baseURL) else {
            return Fail(error: APIError.invalidURL).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .mapError { _ in APIError.reguestFailed }
            .flatMap { result -> AnyPublisher<Data, APIError> in
                guard let response = result.response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                    return Fail(error: APIError.invalidResponse).eraseToAnyPublisher()
                }
                return Just(result.data)
                    .setFailureType(to: APIError.self)
                    .eraseToAnyPublisher()
            }
            .decode(type: CharacterResponse.self, decoder: JSONDecoder())
            .map { response in
                self.cache.setObject(response.results as NSArray, forKey: "characters" as NSString)
                return response.results
            }
            .mapError { _ in APIError.decodingError }
            .eraseToAnyPublisher()
    }
}
