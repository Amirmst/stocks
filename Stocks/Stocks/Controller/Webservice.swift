//
//  Webservice.swift
//  Stocks
//
//  Created by Amir Mostafavi on 1/27/20.
//  Copyright © 2020 amir. All rights reserved.
//

import Foundation

class Webservice {
    func getStocks(completion: @escaping (([Stock]?) -> Void)) {
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/stocks") else {
             fatalError("URL is not correct!")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil) : completion(stocks)
        }.resume()
    }
}
