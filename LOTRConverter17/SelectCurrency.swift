//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Antun Karlovac on 12/17/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Parchment background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
               
                // Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<5) { _ in
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                    /*
                    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    CurrencyIcon(currencyImage: .silverpenny, currencyName: "Silver Penny")
                    CurrencyIcon(currencyImage: .silverpiece, currencyName: "Silver Piece")
                    CurrencyIcon(currencyImage: .goldpenny, currencyName: "Gold Penny")
                    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
                    */
                }
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)

            }
            .padding()
            .multilineTextAlignment(.center) // Now applies to all text
        }
    }
}

#Preview {
    SelectCurrency()
}

