//
//  TransactionsPreviewData.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import Foundation

// Sample data for Transaction
let sampleTransactions: [Transaction] = [
    Transaction(
        id: "txn001",
        tribeTransactionID: "tribeTxn001",
        tribeCardID: 123,
        amount: "100.00",
        schemeID: "scheme01", 
        status: "completed",
        tribeTransactionType: "purchase",
        merchantName: "Amazon",
        pan: "1234567890123456"
    ),
    Transaction(
        id: "txn002",
        tribeTransactionID: "tribeTxn002",
        tribeCardID: 124,
        amount: "250.00",
        schemeID: "scheme02", 
        status: "pending",
        tribeTransactionType: "refund",
        merchantName: "Ebay",
        pan: "6543210987654321"
    ),
    Transaction(
        id: "txn003",
        tribeTransactionID: "tribeTxn003",
        tribeCardID: 125,
        amount: "75.50",
        schemeID: "scheme01", 
        status: "completed",
        tribeTransactionType: "purchase",
        merchantName: "Walmart",
        pan: "9876543210987654"
    ),
    Transaction(
        id: "txn004",
        tribeTransactionID: "tribeTxn004",
        tribeCardID: 126,
        amount: "300.00",
        schemeID: "scheme03", 
        status: "failed",
        tribeTransactionType: "purchase",
        merchantName: "Apple Store",
        pan: "4321098765432109"
    ),
    Transaction(
        id: "txn005",
        tribeTransactionID: "tribeTxn005",
        tribeCardID: 127,
        amount: "50.00",
        schemeID: "scheme04", 
        status: "completed",
        tribeTransactionType: "withdrawal",
        merchantName: "ATM",
        pan: "2109876543210987"
    ),
    Transaction(
        id: "txn006",
        tribeTransactionID: "tribeTxn006",
        tribeCardID: 128,
        amount: "150.00",
        schemeID: "scheme05",
        status: "completed",
        tribeTransactionType: "purchase",
        merchantName: "Best Buy",
        pan: "5678901234567890"
    ),
    Transaction(
        id: "txn007",
        tribeTransactionID: "tribeTxn007",
        tribeCardID: 129,
        amount: "200.00",
        schemeID: "scheme02", 
        status: "pending",
        tribeTransactionType: "purchase",
        merchantName: "Target",
        pan: "0987654321098765"
    ),
    Transaction(
        id: "txn008",
        tribeTransactionID: "tribeTxn008",
        tribeCardID: 130,
        amount: "120.75",
        schemeID: "scheme01", 
        status: "completed",
        tribeTransactionType: "refund",
        merchantName: "Costco",
        pan: "8765432109876543"
    ),
    Transaction(
        id: "txn001",
        tribeTransactionID: "tribeTxn009",
        tribeCardID: 145,
        amount: "1000.00",
        schemeID: "scheme01", 
        status: "completed",
        tribeTransactionType: "topUp",
        merchantName: "Amazon",
        pan: "1234567890123456"
    )
]


