//
//  CocktailIngredientsView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 09..
//

import SwiftUI

struct CocktailIngredientsView: View {
    // MARK: - Properties
    
    var cocktail: Cocktail
    
    // MARK: - Body
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Ingredients") {
                ForEach(0..<cocktail.ingredients.count) { item in
                    Divider().padding(.vertical, 2)
                    Text(cocktail.ingredients[item])
                }
            }
        } // GroupBox
    }
}

// MARK: - Preview

struct CocktailIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailIngredientsView(cocktail: cocktailData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
