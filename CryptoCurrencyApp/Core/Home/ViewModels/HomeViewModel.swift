//
//  HomeViewModel.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 09-03-23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var topMovers = [Coin]()
    @Published var isLoading = false
    
    init() {
        fetchCoinData()
    }
    
    
    func fetchCoinData() {
        let urlStr = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string:  urlStr) else {
            return
        }
        
        self.isLoading = true
        
        URLSession.shared.dataTask(with: url) { data, response, error in
           
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                self.isLoading = false
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: response \(response.statusCode)")
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovers()
                    self.isLoading = false
                }
            } catch let error {
                print("DEBUG: error parsing \(error.localizedDescription)")
            }
        }.resume()
    }
    
    func configureTopMovers() {
        let topMovers = coins.sorted(by: {
            $0.priceChangePercentage24H > $1.priceChangePercentage24H
        })
        self.topMovers = Array(topMovers.prefix(5))
    }
}
