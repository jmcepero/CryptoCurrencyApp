//
//  CoinDetailsSectionView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 11-03-23.
//

import SwiftUI

struct CoinDetailsSection: View {
    let coinDetailSectionModel: CoinDetailSectionModel
    
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack{
            Text(coinDetailSectionModel.title)
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                ForEach(coinDetailSectionModel.stats) { stat in
                    StatisticView(model: stat)
                }
            }
        }.padding(.horizontal)
    }
}

struct CoinDetailsSection_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsSection(coinDetailSectionModel: dev.sectionModel)
    }
}
