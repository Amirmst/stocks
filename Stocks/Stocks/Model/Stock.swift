//
//  Stock.swift
//  Stocks
//
//  Created by Amir Mostafavi on 1/27/20.
//  Copyright © 2020 amir. All rights reserved.
//

import Foundation
import SwiftUI

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String 
}
