//  WatchEpisodesButton.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI

struct WatchEpisodesButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 10, height: 12)
                    .foregroundColor(Color.themeOrangeColor)
                
                Text("Watch episodes")
                    .font(.system(size: 14))
                    .foregroundStyle(Color.themeOrangeColor)
            }
            .frame(width: 148, height: 36)
            .background(Color.themeOrangeColor.opacity(0.1))
            .cornerRadius(17)
        }
    }
}
