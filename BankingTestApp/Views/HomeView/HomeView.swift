//
//  HomeView.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack(content: {
            HStack(content: {
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "plus")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                })
            })
            HStack() {
                Text("Money")
                    .font(.title)
                    .bold()
                Spacer()
            }
            BalanceView()
                .environmentObject(homeViewModel)
            CardsListView(displayedCardsCount: 3)
                .environmentObject(homeViewModel)
            TransactionsListView(firstDisplayedTransactions: 3)
                .environmentObject(homeViewModel)
        })
    }
}

#Preview {
    HomeView()
        .environmentObject(HomeViewModel())
}
