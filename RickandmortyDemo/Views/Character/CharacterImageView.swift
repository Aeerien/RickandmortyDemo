//  CharacterImageView.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI
import Kingfisher

struct CharacterImageView: View {
    let imageURL: String
    let isDead: Bool
    
    var body: some View {
        KFImage(URL(string: imageURL))
            .onFailure{ error in
                print("Image loading error: \(error)")
            }
            .resizable()
            .scaledToFill()
            .saturation(isDead ? 0 : 1)
            .frame(width: 120, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
    }
}
