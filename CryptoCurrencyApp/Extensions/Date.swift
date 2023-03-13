//
//  Date.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 12-03-23.
//

import Foundation


extension Date {
    
    init(dateStr: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: dateStr) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
}
