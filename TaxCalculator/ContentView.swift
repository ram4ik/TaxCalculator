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
            
            TextField("Salary", text: $salary)
            
            Button{
                
            } label: {
                Text("Calculate Tax")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
