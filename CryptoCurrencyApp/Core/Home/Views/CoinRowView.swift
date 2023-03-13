//
//  CoinRowView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 09-03-23.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // market cap rank
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
            
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 5)
            }
            .foregroundColor(Color.theme.primaryTextColor)
            .padding(.leading, 2)
            
            Spacer()
            
            // coin price
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.trailing, 4)
                    .foregroundColor(Color.theme.primaryTextColor)
                
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .padding(.trailing, 5)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.trailing, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
