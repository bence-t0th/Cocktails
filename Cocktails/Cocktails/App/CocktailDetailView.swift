//
//  CocktailDetailView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct CocktailDetailView: View {
    // MARK: - Properties
    
    var cocktail: Cocktail
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    CocktailHeaderView(cocktail: cocktail)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(cocktail.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(cocktail.gradientColors[1])
                        
                        //Headline
                        Text(cocktail.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        // Subheadline
                        Text("Learn more about \(cocktail.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(cocktail.gradientColors[1])
                        
                        // Description
                        Text(cocktail.description)
                            .multilineTextAlignment(.leading)
                        
                        // Ingredients
                        CocktailIngredientsView(cocktail: cocktail)
                        
                        // Serving
                        Text("How to serve \(cocktail.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(cocktail.gradientColors[1])
                        
                        Text(cocktail.serving)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // VStack
                .navigationBarTitle(cocktail.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // Scroll
            .edgesIgnoringSafeArea(.top)
        } // Navigation
    }
}

//MARK: - Preview

struct CocktailDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetailView(cocktail: cocktailData[0])
    }
}
