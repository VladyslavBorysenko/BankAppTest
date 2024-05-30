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
            Group {
                HStack(content: {
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.blue)
                            .font(.title)
                    })
                })
                HStack() {
                    Text("Money")
                        .font(.title)
                        .bold()
                    Spacer()
                }
            }
            .padding(.horizontal)
            ScrollView {
                BalanceView()
                    .environmentObject(homeViewModel)
                CardsListView(displayedCardsCount: 3)
                    .environmentObject(homeViewModel)
                TransactionsListView(firstDisplayedTransactions: 3)
                    .environmentObject(homeViewModel)
            }        
            .shadow(color: Color.primary.opacity(0.05), radius: 7)
            .padding()
        })
        .background(Color.backgroundColor)
    }
}

#Preview {
    HomeView()
        .environmentObject(HomeViewModel())
}
