//
//  CardRow.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

struct CardRow: View {
    var card: Card
    
    var body: some View {
        HStack(alignment: .center) {
            Image("credit_card_stub")
                .resizable()
                .frame(width: 60, height: 60)
            Text(card.cardName)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color.gray)
    }
}

#Preview {
    CardRow(card: sampleCards[0])
}
