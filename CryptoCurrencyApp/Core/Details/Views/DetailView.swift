//
//  DetailView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 09-03-23.
//

import SwiftUI

struct DetailView: View {
    let viewModel: CoinDetailViewModel
    
    init(coin: Coin) {
        self.viewModel = CoinDetailViewModel(coin: coin)
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            // chart
            ChartView(viewModel: viewModel)
                .padding(.vertical)
                .shadow(color: viewModel.chartLineColor, radius: 10)
                .shadow(color: viewModel.chartLineColor.opacity(0.5), radius: 10)
            
            // overview
            CoinDetailsSection(coinDetailSectionModel: viewModel.overviewSectionModel)
                .padding(.vertical)
            
            // additional details
            CoinDetailsSection(coinDetailSectionModel: viewModel.additionalSectionModel)
                .padding(.vertical)
            
        }.navigationTitle(viewModel.coinName)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
