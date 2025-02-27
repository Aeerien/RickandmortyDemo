//  ViewModifiers.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import SwiftUI

struct NameStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 21))
            .fontWeight(.regular)
            .foregroundColor(.black)
    }
}

struct SubtitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundColor(.black)
    }
}

struct StatusStyle: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .fontWeight(.regular)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .padding(.horizontal, 4)
            .background(color.opacity(0.2))
            .cornerRadius(25)
            .fixedSize(horizontal: true, vertical: false)
    }
}

struct IconStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.themeGreyColor)
            .frame(width: 8.4, height: 12)
    }
}

extension Image {
    func iconStype() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .modifier(IconStyle())
    }
}

extension View {
    func nameStyle() -> some View { self.modifier(NameStyle()) }
    func subtitleStyle() -> some View { self.modifier(SubtitleStyle()) }
    func statusStyle(color: Color) -> some View { self.modifier(StatusStyle(color: color)) }
    func iconStyle() -> some View { self.modifier(IconStyle()) }
}
