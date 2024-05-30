//
//  BalanceView.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "€"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.groupingSeparator = ","
        formatter.usesGroupingSeparator = true
        return formatter
    }
    
    var body: some View {
        VStack(content: {
            HStack(content: {
                Text("🇪🇺")
                Text("EUR account")
            })
            .foregroundColor(.gray)
            Text(viewModel.balance as NSNumber, formatter: currencyFormatter)
        })
    }
}

#Preview {
    BalanceView().environmentObject(HomeViewModel())
}
