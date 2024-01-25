//
//  ResultsView.swift
//  TaxCalculator
//
//  Created by test on 25.01.2024.
//

import SwiftUI
import SwiftUICharts

struct ResultsView: View {
    var taxBreakdown: [Double] = [5, 10, 15, 30, 42]
    
    var body: some View {
        VStack {
            Text("Summary")
                .font(.system(size: 36))
                .fontWeight(.bold)
            Spacer()
            
            PieChartView(data: taxBreakdown, title: "Results")
            Spacer()
            
            Text("Before Tax")
                .font(.system(size: 32))
            Text("145145")
                .font(.system(size: 32))
            Text("After Tax")
                .font(.system(size: 32))
            Text("123123")
                .font(.system(size: 32))
        }
        .padding()
    }
}

#Preview {
    ResultsView()
}
