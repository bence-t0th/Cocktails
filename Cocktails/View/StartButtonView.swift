//
//  StartButtonView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.1), radius: 2, x: 2, y: 2)

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.1), radius: 2, x: 2, y: 2)
            } // HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.1), radius: 2, x: 2, y: 2)
        } // Button
        .accentColor(.white)
    }
}

// MARK: - Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
