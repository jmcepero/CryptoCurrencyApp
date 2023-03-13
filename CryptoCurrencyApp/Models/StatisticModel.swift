//
//  StatisticModel.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 11-03-23.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
}
