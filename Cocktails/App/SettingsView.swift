//
//  SettingsView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 09..
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding = false
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Cocktail", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("This is my first application using SwiftUI. I always wanted to create an iOS application with famous drinks. It contains beers, whiskys, vodkas and cocktails.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can see the recommendation cards on the screen when you start the application.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Recommendations".uppercased())
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }

                    // MARK: - Section 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "Developer", content: "Bence Tóth")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "LinkedIn", linkLabel: "Bence Tóth", linkDestination: "linkedin.com/in/bence-t0th/")
                        SettingsRowView(name: "GitHub", linkLabel: "bence-t0th", linkDestination: "github.com/bence-t0th")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                    }
                } // VStack
                .navigationBarTitle("Settings")
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            } // Scroll
        } // Navigation
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
