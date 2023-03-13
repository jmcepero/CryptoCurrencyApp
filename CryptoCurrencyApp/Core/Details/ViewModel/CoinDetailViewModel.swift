//
//  CoinDetailViewModel.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 12-03-23.
//

import Foundation
import SwiftUI

class CoinDetailViewModel {
    
    private let coin: Coin
    var chartData = [ChartDataModel]()
    var startDate = Date()
    var endDate = Date()
    var minPrice = 0.0
    var maxPrice = 0.0
    var xAxisValues = [Date]()
    var yAxisValues = [Double]()
    var coinName: String {
        return coin.name
    }
    
    var chartLineColor: Color {
        let priceChange = (coin.sparklineIn7D?.price.last ?? 0) - (coin.sparklineIn7D?.price.first ?? 0)
        return priceChange > 0 ? .green : .red
    }
    
    var overviewSectionModel: CoinDetailSectionModel {
        // price stats
        let price = coin.currentPrice.toCurrency()
        let priceStats = StatisticModel(title: "Current Price", value: price, percentageChange: coin.priceChangePercentage24H)
        
        // market cap
        let marketCap = coin.marketCap ?? 0
        let marketCapStats = StatisticModel(title: "Market Capitalization", value: marketCap.formattedWithAbbreviation(), percentageChange: coin.marketCapChangePercentage24H)
        
        // rank stats
        let rankStats = StatisticModel(title: "Rank", value: "\(coin.marketCapRank)", percentageChange: nil)
        
        // volume stats
        let volume = coin.totalVolume ?? 0
        let volumeStats = StatisticModel(title: "Volume", value: volume.formattedWithAbbreviation(), percentageChange: nil)
        
        return CoinDetailSectionModel(title: "Overview", stats: [priceStats, marketCapStats, rankStats, volumeStats])
    }
    
    var additionalSectionModel: CoinDetailSectionModel {
        // 24h Hight
        let high = coin.high24H?.toCurrency() ?? "n/a"
        let highStats = StatisticModel(title: "24H High", value: high, percentageChange: nil)
        
        // 24h Low
        let low = coin.low24H?.toCurrency() ?? "n/a"
        let lowStats = StatisticModel(title: "24H Low", value: low, percentageChange: nil)
        
        
        // 24h Prie change
        let priceChange = coin.priceChange24H.toCurrency()
        let priceStats = StatisticModel(title: "24H Price Change", value: priceChange, percentageChange: coin.priceChangePercentage24H)
        
        // 24h market cap change
        let marketCap24H = coin.marketCapChange24H ?? 0
        let marketCap24HStats = StatisticModel(title: "24H Market Cap Change", value: marketCap24H.formattedWithAbbreviation(), percentageChange: coin.marketCapChangePercentage24H)
        
        return CoinDetailSectionModel(title: "Overview", stats: [highStats, lowStats, priceStats, marketCap24HStats])
    }
    
    init(coin: Coin) {
        self.coin = coin
        configureChartData()
    }
    
    func configureChartData() {
        guard let priceData = coin.sparklineIn7D?.price else { return }
        var index = 0
        self.endDate = Date(dateStr: coin.lastUpdated ?? "")
        self.startDate = endDate.addingTimeInterval(-7 * 60 * 60 * 24)
        self.minPrice = priceData.min() ?? 0.0
        self.maxPrice = priceData.max() ?? 0.0
        self.yAxisValues = [minPrice, (maxPrice / minPrice) / 2, maxPrice]
        self.xAxisValues = [startDate, endDate]
        
        for price in priceData.reversed() {
            let date = endDate.addingTimeInterval(-1 * 60 * 60 * Double(index))
            let chartDataItem = ChartDataModel(date: date, value: price)
            self.chartData.append(chartDataItem)
            index+=1
        }
    }
}
