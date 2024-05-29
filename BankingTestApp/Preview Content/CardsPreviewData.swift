//
//  CardsPrevieData.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import Foundation

// Array of sample cards
let sampleCards: [Card] = [
    Card(
        id: "card789012",
        cardLast4: "5678",
        cardName: "Jane's MasterCard",
        isLocked: true,
        isTerminated: false,
        spent: 1500,
        limit: 3000,
        limitType: "monthly",
        cardHolder: CardHolder(
            id: "ch789012",
            fullName: "Jane Smith",
            email: "janesmith@example.com",
            logoURL: "https://example.com/logo2.png"
        ),
        fundingSource: "Credit Line",
        issuedAt: "2023-02-01T00:00:00Z"
    ),
    Card(
        id: "card345678",
        cardLast4: "9012",
        cardName: "Company Card",
        isLocked: false,
        isTerminated: true,
        spent: 0,
        limit: 10000,
        limitType: "annual",
        cardHolder: CardHolder(
            id: "ch345678",
            fullName: "ACME Corp.",
            email: "contact@acmecorp.com",
            logoURL: "https://example.com/logo3.png"
        ),
        fundingSource: "Corporate Account",
        issuedAt: "2023-03-01T00:00:00Z"
    ),
    Card(
        id: "card789012",
        cardLast4: "5678",
        cardName: "Jane's MasterCard",
        isLocked: true,
        isTerminated: false,
        spent: 1500,
        limit: 3000,
        limitType: "monthly",
        cardHolder: CardHolder(
            id: "ch789012",
            fullName: "Jane Smith",
            email: "janesmith@example.com",
            logoURL: "https://example.com/logo2.png"
        ),
        fundingSource: "Credit Line",
        issuedAt: "2023-02-01T00:00:00Z"
    )
]
