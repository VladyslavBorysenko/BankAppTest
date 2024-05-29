//
//  Transaction.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import Foundation

enum TransactionType: String {
    case purchase, refund, withdrawal, topUp
}

enum TransactionStatus: String {
    case completed, pending, failed
}

struct Transaction: Codable {
    let id, tribeTransactionID: String
    let tribeCardID: Int
    let amount, schemeID: String
    let status: TransactionStatus.RawValue
    let tribeTransactionType: TransactionType.RawValue
    let merchantName, pan: String

    enum CodingKeys: String, CodingKey {
        case id
        case tribeTransactionID = "tribeTransactionId"
        case tribeCardID = "tribeCardId"
        case amount, status, tribeTransactionType
        case schemeID = "schemeId"
        case merchantName, pan
    }
    
    var displayedTransactionAmount: Double? {
        let convertedAmount = Double(amount)
        guard let convertedAmount = convertedAmount else { return nil }
        switch tribeTransactionType {
        case TransactionType.purchase.rawValue:
            return -convertedAmount
        case TransactionType.refund.rawValue:
            return convertedAmount
        case TransactionType.withdrawal.rawValue:
            return -convertedAmount
        case TransactionType.topUp.rawValue:
            return convertedAmount
        default:
            return convertedAmount
        }
    }
    
    var isTransactionFailed: Bool {
        if case TransactionStatus.failed.rawValue = status {
            return true
        }
        return false
    }
    
    
    var transactionIcon: String {
        switch tribeTransactionType {
        case TransactionType.purchase.rawValue:
            return "shopping_bag"
        case TransactionType.refund.rawValue:
            return "refund_icon"
        case TransactionType.withdrawal.rawValue:
            return "arrow_down_left"
        case TransactionType.topUp.rawValue:
            return "shopping_bag"
        default:
            return "shopping_bag"
        }
    }
}

typealias Transactions = [Transaction]
