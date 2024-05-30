//
//  CardsListView.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

private enum Constants {
    static let listCornerRadius: CGFloat = 15
    static let listShadowRadius: CGFloat = 7
}
struct CardsListView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    var displayedCardsCount: Int
    
    var body: some View {
        VStack(content: {
            HStack(content: {
                Text("My Cards")
                    .font(.headline)
                Spacer()
                Text("See All")
                    .foregroundStyle(.blue)
                    .bold()
            })
            .padding(.bottom)
            ForEach(viewModel.cards.prefix(displayedCardsCount), id: \.id) { card in
                CardRow(card: card)
            }
        })
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: Constants.listCornerRadius, style: .continuous))
    }
}

#Preview {
    CardsListView(displayedCardsCount: 3).environmentObject(HomeViewModel())
}
