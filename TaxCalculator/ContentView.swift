//
//  ContentView.swift
//  TaxCalculator
//
//  Created by test on 25.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var salary: String = ""
    
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
            
            Button{
                
            } label: {
                Text("Calculate Tax")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
