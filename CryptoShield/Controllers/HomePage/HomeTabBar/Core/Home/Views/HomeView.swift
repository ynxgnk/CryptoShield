//
//  HomeView.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 06.06.2023.
//

import UIKit
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                //all coins view
                AllCoinsView(viewModel: viewModel)
                
            }
            .navigationTitle("Live Prices")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
