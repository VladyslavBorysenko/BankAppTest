//
//  CardRow.swift
//  BankingTestApp
//
//  Created by Overlord on 30.05.2024.
//

import SwiftUI

private enum Constants {
    static let verticalPadding: CGFloat = 8
    static let cardImageSize: CGSize = CGSize(width: 48, height: 32)
}

struct CardRow: View {
    var card: Card
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "creditcard.and.123")
                .resizable()
                .frame(
                    width: Constants.cardImageSize.width,
                    height: Constants.cardImageSize.height
                )
            Text(card.cardName)
            Spacer()
        }
        .padding(.vertical, Constants.verticalPadding)
    }
}

#Preview {
    CardRow(card: sampleCards[0])
}
