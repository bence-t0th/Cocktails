//
//  ContentView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var active: Bool = false
    var cocktails = cocktailData
    
    @State private var isShowingSettings = false
    
    @State var accent: Color = Color.white
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cocktails.shuffled()) { item in
                    NavigationLink(destination: CocktailDetailView(cocktail: item)) {
                        CocktailRowView(cocktail: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Cocktails")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "gearshape")
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            })
            .onAppear(perform: {
                UIScrollView.appearance().bounces = true
            })
        } // Navigation
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cocktails: cocktailData)
    }
}
