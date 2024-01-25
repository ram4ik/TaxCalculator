//
//  MainView.swift
//  TaxCalculator
//
//  Created by test on 25.01.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CalculatorView()
                .tabItem {
                    Label("Calculator", systemImage: "figure.dress.line.vertical.figure")
                }
            ResultsView()
                .tabItem {
                    Label("Result", systemImage: "dots.and.line.vertical.and.cursorarrow.rectangle")
                }
        }
    }
}

#Preview {
    MainView()
}
