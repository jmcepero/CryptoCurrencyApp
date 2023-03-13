//
//  HomeView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 09-03-23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false){
                    // top models views
                    TopMoversView(viewModel: viewModel)
                    
                    Divider()
                    
                    // all coins views
                    AllCoinsView(viewModel: viewModel)
                }
                .navigationTitle("Live Prices")
                
                if(viewModel.isLoading) {
                    LoadingIndicator()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
