//
//  Item.swift
//  Fortunatam
//
//  Created by Uğurcan Eser on 1.01.2025.
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
