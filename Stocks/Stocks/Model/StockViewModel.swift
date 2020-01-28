//
//  StockViewModel.swift
//  Stocks
//
//  Created by Amir Mostafavi on 1/27/20.
//  Copyright © 2020 amir. All rights reserved.
//

import Foundation

struct StockViewModel {
    let stock: Stock
    
    var symbol: String {
        self.stock.symbol
    }
    
    var description: String {
        self.stock.description
    }
    
    var price: Double {
        self.stock.price
    }
    
    var change: String {
        self.stock.change
    }
}
