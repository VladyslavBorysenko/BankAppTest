//
//  TransactionsListView.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

private enum Constants {
    static let listCornerRadius: CGFloat = 15
    static let listShadowRadius: CGFloat = 15
}

struct TransactionsListView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var firstDisplayedTransactions: Int = 3
    
    var body: some View {
        VStack {
            HStack {
                Text("Recent Transactions")
                    .font(.system(size: 17))
                    .bold()
                Spacer()
                NavigationLink {
                } label: {
                    Text("See All")
                        .foregroundStyle(Color.blue)
                        .bold()
                }
            }
            .padding()
            ForEach(Array(homeViewModel.transactions.prefix(firstDisplayedTransactions).enumerated()), id: \.element) { index, transaction in
                TransactionRow(transation: transaction)
            }
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: Constants.listCornerRadius, style: .continuous))
    }
}

#Preview {
    TransactionsListView(firstDisplayedTransactions: 7).environmentObject(HomeViewModel())
}
