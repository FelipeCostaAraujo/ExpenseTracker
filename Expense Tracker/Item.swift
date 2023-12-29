//
//  Item.swift
//  Expense Tracker
//
//  Created by Felipe C. Araujo on 28/12/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
