//  Character.swift
//  RickandmortyDemo
//  Created by Irina Arkhireeva on 26.02.2025.

import Foundation

struct Character: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    let origin: Origin
}

struct Origin: Codable {
    let name: String
}
