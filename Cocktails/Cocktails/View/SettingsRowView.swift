//
//  SettingsRowView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 09..
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "safari").foregroundColor(.blue)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Bence Tóth")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "GitHub", linkLabel: "GitHub", linkDestination: "github.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
