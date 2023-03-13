//
//  LazyNavigationView.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 13-03-23.
//

import SwiftUI

struct LazyNavigationView<Content: View> : View {
    
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
