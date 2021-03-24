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
        NavigationView {
            TabView {
                ForEach(cocktails.shuffled()[0..<3]) { item in
                    CocktailCardView(cocktail: item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding(.top, 20)
            .padding(.bottom, 10)
            .navigationTitle("Recommendations")
        }
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(cocktails: cocktailData)
    }
}
