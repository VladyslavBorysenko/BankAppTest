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
    var page: some View {
        switch self {
        case .home:
            Text("Home")
        case .transactions:
            Text("Transactions")
        case .myCards:
            Text("My Cards")
        case .account:
            Text("Account")
        }
    }
}
