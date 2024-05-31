//
//  BalanceView.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4, content: {
                HStack(content: {
                    Text("🇪🇺")
                    Text("EUR account")
                })
                .foregroundColor(.gray)
                Text(currencyFormatter.string(from: NSNumber(value: viewModel.balance)) ?? "0")
                    .font(.title)
                    .bold()
            })
            .padding()
            Spacer()
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

#Preview {
    BalanceView().environmentObject(HomeViewModel())
}
