//
//  ContentView.swift
//  BankingTestApp
//
//  Created by Overlord on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = Tabs.home
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        TabView(
            selection: $selectedTab,
            content:  {
                HomeView()
                    .environmentObject(homeViewModel)
                    .tabItem {
                    Image("home")
                    Text(Tabs.home.rawValue)
                }.tag(Tabs.home)
                
                Tabs.transactions.page.tabItem {
                    Image("list")
                    Text(Tabs.transactions.rawValue)
                }.tag(Tabs.transactions)
                
                Tabs.myCards.page.tabItem {
                    Text(Tabs.myCards.rawValue)
                    Image("credit_card")
                }.tag(Tabs.myCards)
                
                Tabs.account.page.tabItem {
                    Text("Account")
                    Image("user_square")
                }.tag(Tabs.account)
            })
    }
}

#Preview {
    ContentView()
        .environmentObject(HomeViewModel())
}
