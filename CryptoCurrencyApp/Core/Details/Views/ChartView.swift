//
//  ChartView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 12-03-23.
//

import SwiftUI
import Charts

struct ChartView: View {
    let viewModel: CoinDetailViewModel
    
    var body: some View {
        VStack {
            Chart {
                ForEach(viewModel.chartData) { item in
                    LineMark(
                        x: .value("Date", item.date),
                        y: .value("Price", item.value)
                    )
                    .interpolationMethod(.cardinal)
                    .foregroundStyle(viewModel.chartLineColor)
                }
            }
            .chartXScale(
                domain: [
                    viewModel.startDate,
                    viewModel.endDate
                ]
            )
            .chartXAxis {
                AxisMarks(position: .bottom, values: viewModel.xAxisValues)
            }
            .chartYScale(
                domain: [
                    viewModel.minPrice,
                    viewModel.maxPrice
                ]
            )
        }.frame(height: 200)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(viewModel: CoinDetailViewModel(coin: dev.coin))
    }
}
