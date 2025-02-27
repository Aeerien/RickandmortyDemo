//  CharactersListView.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI

struct CharactersListView: View {
    @StateObject var viewModel = CharactersViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Characters")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    
                    ForEach(viewModel.characters) {
                        character in CharacterRowView(character: character)
                            .padding(.horizontal)
                    }
                }
            }
            .alert(item: $viewModel.errorMessage) { error in
                Alert(title: Text("Error"), message: Text(error.message), dismissButton: .default(Text("OK")))
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CharactersListView()
}
