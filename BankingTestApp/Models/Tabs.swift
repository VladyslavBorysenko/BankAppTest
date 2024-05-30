//
//  Tabs.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import SwiftUI

enum Tabs: String {
    case home = "Home"
    case transactions = "Transactions"
    case myCards = "My Cards"
    case account = "Account"
    
    @ViewBuilder
    func stubPage(title: String) -> some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title)
                    .bold()
                    .padding()
                 Spacer()
            }
            Spacer()
            Image("coming_soon")
            Spacer()
        }
    }
    
    @ViewBuilder
    var page: some View {
        switch self {
        case .home:
            Text("Home")
        case .transactions:
            stubPage(title: "Transactions")
        case .myCards:
            stubPage(title: "My Cards")
        case .account:
            stubPage(title: "Account")
        }
    }
}
