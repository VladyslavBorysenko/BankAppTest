//
//  TransactionRow.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import SwiftUI

private enum Constants {
    static let iconHeight: CGFloat = 40
    static let iconWidth: CGFloat = 40
    static let transactionDeclinedMarkWidth: CGFloat = 12
    static let transactionDeclinedMarkHeight: CGFloat = 12
}
struct TransactionRow: View {
    let transation: Transaction
    
    var transactionAmountColor: Color {
        var transactionColor: Color = .transactionAmountColorCommon
        switch transation.tribeTransactionType {
        case TransactionType.purchase.rawValue, TransactionType.withdrawal.rawValue:
            if case TransactionStatus.failed.rawValue = transation.status {
                transactionColor = Color.transactionAmountColorDeclined
            } else {
                transactionColor = Color.transactionAmountColorCommon
            }
        case TransactionType.topUp.rawValue, TransactionType.refund.rawValue:
            transactionColor = Color.transactionSuccessColor
        default:
            transactionColor = Color.transactionAmountColorCommon
        }
        return transactionColor
    }
    
    var body: some View {
        HStack {
            Circle()
                .fill(Color.transactionIconBackground)
                .frame(width: Constants.iconWidth, height: Constants.iconHeight)
                .overlay {
                    Image(transation.transactionIcon)
                }
                .overlay(alignment: .bottomTrailing) {
                    if transation.isTransactionFailed {
                        Circle()
                            .fill(Color.transactionDeclinedColor)
                            .frame(width: Constants.transactionDeclinedMarkWidth, height: Constants.transactionDeclinedMarkHeight)
                    }
                }
            VStack {
                Text(transation.merchantName)
                    .font(.headline)
                // Since I didn't see any card related numbers in response structure I decided to
                // display tribe card id
                Text("•• \(transation.tribeCardID)")
                }
            Spacer()
            VStack {
                Text(transation.displayedTransactionAmount ?? 0, format: .currency(code: "EUR"))
                    .foregroundStyle(transactionAmountColor)
                    .bold()
            }
            
            }
        }
    }

#Preview {
    TransactionRow(transation: sampleTransactions[7])
    
}
