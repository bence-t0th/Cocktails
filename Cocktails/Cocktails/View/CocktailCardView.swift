//
//  CocktailCardView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct CocktailCardView: View {
    // MARK: - Properties
    
    var cocktail: Cocktail
    
    @State private var isAnimating = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Image
                Image(cocktail.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.85)
                
                // Title
                Text(cocktail.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Headline
                Text(cocktail.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button
                StartButtonView()
                
            } //VStack
        } //ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.2)) {
                isAnimating = true
            }
            isAnimating = false
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: cocktail.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview

struct CocktailCardView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailCardView(cocktail: cocktailData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
