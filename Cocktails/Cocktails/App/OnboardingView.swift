//
//  OnboardingView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var cocktails = cocktailData
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(cocktails[0..<4]) { cocktail in
                CocktailCardView(cocktail: cocktail)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(cocktails: cocktailData)
    }
}
