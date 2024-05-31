//
//  TransferView.swift
//  BankingTestApp
//
//  Created by Overlord on 31.05.2024.
//

import SwiftUI

struct TransferView: View {
    @Binding var isPresented: Bool
    @State var enteredAmount: Double = 0
    @State var isAmountAppropriate = true
    @EnvironmentObject var viewModel: HomeViewModel
    
    var textFieldcurrencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "en")
        formatter.numberStyle = .currency
        formatter.allowsFloats = true
        formatter.currencySymbol = ""
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.groupingSeparator = "."
        formatter.decimalSeparator = ","
        formatter.usesGroupingSeparator = true
        return formatter
    }
  
    var body: some View {
        let availableAmount = currencyFormatter.string(from: NSNumber(value: viewModel.balance)) ?? "0"
        VStack {
            HStack {
                Spacer()
                Text("Transfer")
                    .font(.headline)
                Spacer()
                Button(action: {
                    isPresented = false
                }, label: {
                    Image(systemName: "xmark")
                })
            }
            .padding()
            Spacer()
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Spacer()
                    Text("€")
                    TextField("0", value: $enteredAmount, formatter: textFieldcurrencyFormatter, onEditingChanged: { changed in
                        isAmountAppropriate = enteredAmount <= viewModel.balance
                    })
                        .keyboardType(.decimalPad)
                }
                .padding(.horizontal, 100)
                .font(.title)
                .bold()
                if isAmountAppropriate {
                    Group {
                        Text("You have ") + Text(availableAmount).bold().foregroundStyle(Color.primary)
                        Text("available in your balance")
                    }
                    .foregroundStyle(Color.gray)
                } else {
                    Group {
                        Text("You have only") + Text(availableAmount).bold()
                        Text("available in your balance")
                    }
                    .foregroundStyle(Color.red)
                }
            }
            Spacer()
            Button(action: {
                isPresented = false
            }, label: {
                Spacer()
                Text("Continue")
                    .foregroundStyle(Color.white)
                Spacer()
            })
            .disabled(!isAmountAppropriate)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .padding()
        }
    }
}
