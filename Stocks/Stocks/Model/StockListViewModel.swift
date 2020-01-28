//
//  StockListViewModel.swift
//  Stocks
//
//  Created by Amir Mostafavi on 1/27/20.
//  Copyright © 2020 amir. All rights reserved.
//

import Foundation

class StockListViewModel: ObservableObject {
    @Published var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load() {
        fetchStocks()
    }
    
    private func fetchStocks() {
        Webservice().getStocks() { stocks in
            if let stocks = stocks {
                self.stocks = stocks.map(StockViewModel.init)
            }
        }
    }
}
