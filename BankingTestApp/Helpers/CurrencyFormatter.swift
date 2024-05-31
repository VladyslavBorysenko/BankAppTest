//
//  CurrencyFormatter.swift
//  BankingTestApp
//
//  Created by Overlord on 31.05.2024.
//

import Foundation

var currencyFormatter: NumberFormatter {
    let formatter = NumberFormatter()
    formatter.locale = Locale(identifier: "en")
    formatter.numberStyle = .currency
    formatter.currencyCode = "EUR"
    formatter.currencySymbol = "€"
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 2
    formatter.groupingSeparator = "."
    formatter.decimalSeparator = ","
    formatter.usesGroupingSeparator = true
    return formatter
}
