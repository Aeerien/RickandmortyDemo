//  CharacterRowView.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI
import Kingfisher

struct CharacterRowView: View {
    let character: Character
    
    var body: some View {
        HStack(spacing: 16) {
            
            CharacterImageView(imageURL: character.image, isDead: character.status == "Dead")
            
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(character.name)
                        .nameStyle()
                        .minimumScaleFactor(0.4)
                        .lineLimit(1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    CharacterStatusView(status: character.status)
                }
                Text("\(character.species), \(character.gender)")
                    .subtitleStyle()
                
                WatchEpisodesButton {
                    print("Watch episodes tapped for \(character.name)")
                }
                
                HStack {
                    Image("vector")
                        .iconStyle()
                    Text(character.origin.name)
                        .subtitleStyle()
                }
            }
        }
        .frame(height: 120)
        .onTapGesture {
            print("Cell \(character.name) is tapped")
        }
    }
}

