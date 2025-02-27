//  CharacterStatusView.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI

struct CharacterStatusView: View {
    let status: String
    
    var statusTextColor: Color {
        switch status {
        case "Alive":
            return Color.aliveTextColor
        case "Dead":
            return Color.deadTextColor
        default:
            return Color.unknownTextColor
        }
    }
    
    var statusBackgroundColor: Color {
        switch status {
        case "Alive":
            return Color.aliveBackgroundColor
        case "Dead":
            return Color.deadBackgroundColor
        default:
            return Color.unknownBackgroundColor
        }
    }
    
    var body: some View {
        Text(status.uppercased())
            .statusStyle(color: statusBackgroundColor)
            .foregroundColor(statusTextColor)
    }
}
