//
//  CardsModel.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import Foundation

// MARK: - Card
struct Card: Codable {
    let id, cardLast4, cardName: String
    let isLocked, isTerminated: Bool
    let spent, limit: Int
    let limitType: String
    let cardHolder: CardHolder
    let fundingSource, issuedAt: String
}

// MARK: - CardHolder
struct CardHolder: Codable {
    let id, fullName, email, logoURL: String

    enum CodingKeys: String, CodingKey {
        case id, fullName, email
        case logoURL = "logoUrl"
    }
}
