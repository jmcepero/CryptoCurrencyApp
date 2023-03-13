//
//  TopMoversView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 09-03-23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers").font(.headline)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(viewModel.topMovers) { coin in
                        NavigationLink {
                            LazyNavigationView(DetailView(coin: coin))
                        } label: {
                            TopMoversItemView(coin: coin)
                        }

                    }
                }
            }
        }.padding()
    }
}
