//  CharactersViewModel.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI
import Combine

class CharactersViewModel: ObservableObject {
    @Published var characters: [Character] = []
    @Published var errorMessage: AlertError? = nil
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        fetchCharacters()
    }
    
    func fetchCharacters() {
        APIService.shared.fetchCharacters()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let error):
                    self?.errorMessage = AlertError(message: error.localizedDescription)
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] characters in
                self?.characters = characters
            })
            .store(in: &cancellables)
    }
}
