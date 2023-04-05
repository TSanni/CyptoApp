//
//  Double.swift
//  CyptoApp
//
//  Created by Tomas Sanni on 4/4/23.
//

import Foundation

extension Double {
    
    /// Converts a double into a currency with 2 decimal places
    ///  ```
    ///  Convert 1234.567 to $1,234.567
    ///  ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // default value
//        formatter.currencyCode = "usd" // change the currency
//        formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter
    }
    
    
    
    /// Converts a double into a currency as a string with 2 decimal places
    ///  ```
    ///  Convert 1234.567 to "$1,234.567"
    ///  ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    
    
    /// Converts a double into a currency with 2-6 decimal places
    ///  ```
    ///  Convert 1234.567 to $1,234.567
    ///  Convert 12.34567 to $12.34567
    ///  Convert 0.1234567 to $0.123457
    ///  ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // default value
//        formatter.currencyCode = "usd" // change the currency
//        formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        
        return formatter
    }
    
    
    
    /// Converts a double into a currency as a string with 2-6 decimal places
    ///  ```
    ///  Convert 1234.567 to "$1,234.567"
    ///  Convert 12.34567 to "$12.34567"
    ///  Convert 0.1234567 to "$0.123457"
    ///  ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Converts a double into a string representation
    ///  ```
    ///  Convert 1.2345 to "1.23
    ///  ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    // Converts a double into a string representation
    ///  ```
    ///  Convert 1.2345 to "1.23%
    ///  ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}


