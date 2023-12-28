//
//  IconGrid.swift
//  LOTRConverter17
//
//  Created by Antun Karlovac on 12/27/23.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency

    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                // self.currency is the state one.
                if (self.currency == currency) {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        }    }
}

#Preview {
    IconGrid(currency: .constant(.silverPiece))
}
