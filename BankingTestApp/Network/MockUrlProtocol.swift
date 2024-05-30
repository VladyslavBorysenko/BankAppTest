//
//  MockUrlProtocol.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import Foundation


class MockURLProtocol: URLProtocol {
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    static var requestHandler: ((URLRequest) throws -> (HTTPURLResponse, Data))?

    override func startLoading() {
        guard let handler = MockURLProtocol.requestHandler else {
            assertionFailure("Handler error")
            return
        }
        
        do {
            let (response, data) = try handler(request)
            
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            client?.urlProtocol(self, didLoad: data)
            client?.urlProtocolDidFinishLoading(self)
        } catch {
            assertionFailure(error.localizedDescription)
        }
    }

    override func stopLoading() {}

}
