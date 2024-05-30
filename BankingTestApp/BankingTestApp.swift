//
//  BankingTestApp.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import SwiftUI

@main
struct BankingTestApp: App {
    @StateObject var homeScreenViewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(homeScreenViewModel)
        }
    }
}
