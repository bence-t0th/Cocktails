//
//  CocktailHeaderView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct CocktailHeaderView: View {
    // MARK: - Properties
    
    var cocktail: Cocktail
    
    @State private var isAnimatingImage = false
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
            //LinearGradient(gradient: Gradient(colors: cocktail.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(cocktail.image + "detail")
                .resizable()
                .scaledToFit()
        }
    }
}

// MARK: - Preview

struct CocktailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailHeaderView(cocktail: cocktailData[0])
            .previewLayout(.sizeThatFits)
    }
}
