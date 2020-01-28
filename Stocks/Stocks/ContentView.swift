//
//  ContentView.swift
//  Stocks
//
//  Created by Amir Mostafavi on 1/27/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stockListVM = StockListViewModel()
    var date = Date()
    
    static var titleDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    init() {
        self.stockListVM.load()
    }
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack {
                    HStack {
                        Text("\(date, formatter: Self.titleDateFormatter)")
                            .bold()
                            .font(.title)
                            .foregroundColor(.secondary)
                            .padding(.leading, 20)
                            .padding(.top, 2)
                        Spacer()
                    }
                }
                Spacer()
            }.navigationBarTitle("Stocks")
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
