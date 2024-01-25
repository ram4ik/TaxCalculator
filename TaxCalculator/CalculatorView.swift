//
//  CalculatorView.swift
//  TaxCalculator
//
//  Created by test on 25.01.2024.
//

import SwiftUI

struct CalculatorView: View {
    @State private var salary: String = ""
    @State private var tax = 0.0
    
    var body: some View {
        VStack {
            Text("Annual Salary")
                .padding(.bottom, 75)
            
            TextField("Salary", text: $salary)
                .padding()
                .frame(width: 200)
                .border(Color.black, width: 1)
                .padding(.bottom, 75)
                .keyboardType(.decimalPad)
            
            Text("Tax: \(String(format: "%.2f", tax))")
            
            Button{
                if let income = Double(salary) {
                    tax = calculateTax(for: income)
                    print(tax)
                }
            } label: {
                Text("Calculate Tax")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    
    func calculateTax(for income: Double) -> Double {
        let taxRate = 0.20
        let taxAmount = income * taxRate
        return taxAmount
    }
}

#Preview {
    CalculatorView()
}
