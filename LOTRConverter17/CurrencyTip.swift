//
//  CurrencyTip.swift
//  LOTRConverter17
//
//  Created by Antun Karlovac on 12/27/23.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text ("Change Currency")
    var message: Text? = Text("You can tap on the left or right currency to bring up the Select Currency screen.")
}
