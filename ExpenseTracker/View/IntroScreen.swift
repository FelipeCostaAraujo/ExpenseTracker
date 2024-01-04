//
//  IntroScreen.swift
//  ExpenseTracker
//
//  Created by Felipe C. Araujo on 28/12/23.
//

import SwiftUI

struct IntroScreen: View {
    /// Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: 15) {
            Text("What's New in the \n Expense Tracker")
                .font(.largeTitle.bold())
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            VStack(alignment: .leading, spacing: 25) {
                PointView(symbol: "dollarsign", title: "Transaction", subTitle: "Keep track of your earnings and expenses.")
                PointView(symbol: "chart.bar.fill", title: "Visual Charts", subTitle: "View your transactions using eye-catching graphic representations.")
                PointView(symbol: "magnifyingglass", title: "Advance Filters", subTitle: "Find the expenses you want by advance search and filtering.")
                
                Spacer(minLength: 30)
                
                Button(action: {
                    isFirstTime = false
                }, label: {
                    Text("Continue")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(appTint.gradient, in: .rect(cornerRadius: 12))
                        .contentShape(.rect)
                })

                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(25)
        }
    }
    
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 15) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    IntroScreen()
}
