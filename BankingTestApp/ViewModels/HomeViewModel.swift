//
//  HomeViewModel.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject, Observable {
    @Published var transactions: [Transaction] = []
    @Published var cards: [Card] = []
    
    init() {
        Task {
            try await getTransactions()
            try await getCards()
        }
    }
    
    lazy var session: URLSession = {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [MockURLProtocol.self]
        return URLSession(configuration: configuration)
    }()
    
    lazy var api: BankAPI = {
        BankAPI(session: session)
    }()
    
    @MainActor
    func getTransactions() async throws {
        let mockData = readLocalJSONFile(forName: "Transactions")!
        
        MockURLProtocol.requestHandler = { request in
            let response = HTTPURLResponse(
                url: request.url!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: nil
            )!
            
            return (response, mockData)
        }
        transactions = try await api.fetchTransactions(for: "test").results
    }
    
    @MainActor
    func getCards() async throws {
        let mockData = readLocalJSONFile(forName: "Cards")!
        
        MockURLProtocol.requestHandler = { request in
            let response = HTTPURLResponse(
                url: request.url!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: nil
            )!
            
            return (response, mockData)
        }
        cards = try await api.fetchCards(for: "test").results
        dump(cards)
    }
}

extension HomeViewModel {
    func readLocalJSONFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
}
