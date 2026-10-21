//
//  Item.swift
//  app1
//
//  Created by supchik on 21.10.26.
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
