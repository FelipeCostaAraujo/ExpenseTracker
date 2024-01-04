//
//  ChartModel.swift
//  ExpenseTracker
//
//  Created by Felipe C. Araujo on 28/12/23.
//

import Foundation

struct ChartGroup: Identifiable {
    let id: UUID = .init()
    var date = Date()
    var categories: [ChartCategory]
    var totalIncome: Double
    var totalExpenses: Double
}


struct ChartCategory: Identifiable {
    let id: UUID = .init()
    var totalValue: Double
    var category: Category
}
