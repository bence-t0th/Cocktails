//
//  SettingsLabelView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 09..
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties
    
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - Preview

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Cocktail", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
