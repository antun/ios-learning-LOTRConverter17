//
//  ExchangeRate.swift
//  LOTRConverter17
//
//  Created by Antun Karlovac on 12/15/23.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let text: String
    
    
    var body: some View {
        HStack {
            // Left image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height:33)
            // Exchange rate
            Text(text)
            // Right image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height:33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, rightImage: .silverpenny, text: "1 silver piece = 4 silver pennies")
}

