//
//  CocktailModel.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

// MARK: - Cocktail Data Model

struct Cocktail: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var serving: String
    var ingredients: [String]
}
