//
//  BankAPI.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//


import Foundation

final class BankAPI {
    let endpoint = URL(string: "https://api.example.com/")!
    
    let session: URLSession
    let decoder: JSONDecoder
    
    init(
        session: URLSession = URLSession.shared,
        decoder: JSONDecoder = JSONDecoder()
    ) {
        self.session = session
        self.decoder = decoder
    }
    
    func fetchTotalBalance(for clientId: String) async throws -> BalanceModel {
        return try await request(url: endpoint.appendingPathComponent("/cards/account/total-balance/\(clientId)"))
    }
    
    func fetchTransactions(for clientId: String) async throws -> TransactionsResponse {
        return try await request(url: endpoint.appendingPathComponent("/cards/transactions/\(clientId)"))
    }
    
    func fetchCards(for clientId: String) async throws -> CardsResponse {
        return try await request(url: endpoint.appendingPathComponent("/cards/transactions/\(clientId)"))
    }
    
    private func request<T>(url: URL) async throws -> T where T: Decodable {
        let (data, _) = try await session.data(from: url)
        let result = try! decoder.decode(T.self, from: data)
        return result
    }
}
