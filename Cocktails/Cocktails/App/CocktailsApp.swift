//
//  CocktailsApp.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

@main
struct CocktailsApp: App {
    // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
