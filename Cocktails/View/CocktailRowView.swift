//
//  CocktailRowView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct CocktailRowView: View {
    // MARK: - Properties

    var cocktail: Cocktail
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(cocktail.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 2, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: cocktail.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(cocktail.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(cocktail.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

// MARK: - Preview

struct CocktailRowView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailRowView(cocktail: cocktailData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
