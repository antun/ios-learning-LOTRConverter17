//
//  Currency.swift
//  LOTRConverter17
//
//  Created by Antun Karlovac on 12/17/23.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id: Double { rawValue }
    // We could also do:
    // var id: Currency { self }
    // We just need an `id` property for Identifiable
    
    var image: ImageResource {
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
    
    func convert(amountString: String, currency: Currency) -> String {

        guard let doubleAmount = Double(amountString) else {
            // guard/else will be  is like try/catch - this is the fallback:
            return ""
        }
        
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
                
        
        return String(format: "%.2f", convertedAmount)
    }
}
