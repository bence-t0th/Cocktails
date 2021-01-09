//
//  CocktailDetailView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct CocktailDetailView: View {
    // MARK: - Properties
    
    @State var opacity : Double = 0
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    var cocktail: Cocktail
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 20) {
                        
                        // MARK: -- Header
                        
                        ZStack (alignment: .bottomLeading) {
                            GeometryReader{ geometry in
                                Image(cocktail.image + "detail")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: geometry.size.width, height: self.getHeightForHeaderImage(geometry))
                                    .clipped()
                                    .offset(x: 0, y: self.getOffsetForHeaderImage(geometry))
                                    .colorMultiply(cocktail.gradientColors[1])
                            }
                            
                            Text(cocktail.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.bottom)
                                .shadow(color: Color.black.opacity(1), radius: 10, x: 2, y: 2)
                            
                        } // Header Zstack with Parallax effecr
                        .frame(height: 300)
                    
                       // MARK: -- Rest of the details
            
                        VStack(alignment: .leading, spacing: 20) {
                            // Headline
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
            }
        } // Navigation
    }
    
    // MARK: - Functions
    private func getScrollOffset(_ geometry: GeometryProxy) -> CGFloat {
        geometry.frame(in: .global).minY
    }
    
    private func getOffsetForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        // Image was pulled down
        if offset > 0 {
            return -offset
        }
        return 0
    }
    
    private func getHeightForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        let imageHeight = geometry.size.height

        if offset > 0 {
            return imageHeight + offset
        }

        return imageHeight
    }
}

//MARK: - Preview

struct CocktailDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetailView(cocktail: cocktailData[5])
    }
}
