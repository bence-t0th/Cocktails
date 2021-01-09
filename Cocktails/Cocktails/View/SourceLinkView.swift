//
//  SourceLinkView.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        GroupBox() {
            VStack {
                HStack {
                    Text("Pictures, descriptions")
                    Spacer()
                    Link("SAQ", destination: URL(string: "https://saq.com")!)
                    Image(systemName: "safari")
                }
                
                Divider().padding(.vertical, 2)

                HStack {
                    Text("Headlines")
                    Spacer()
                    Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                    Image(systemName: "safari")
                }
            }
        } // GroupBox
    }
}

// MARK: - Preview

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
