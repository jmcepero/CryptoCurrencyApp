//
//  ChartDataModel.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 12-03-23.
//

import Foundation

struct ChartDataModel: Identifiable {
    let id = UUID().uuidString
    let date: Date
    let value: Double
}
