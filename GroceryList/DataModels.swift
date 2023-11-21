//
//  DataModels.swift
//  GroceryList
//
//  Created by SCOTT CROWDER on 11/21/23.
//

import Foundation
import SwiftData

@Model 
final class Stores {
    var storeName: String
    let dateAdded: Date = Date()
    var formattedDateAdded: String {
        dateAdded.formatted(date: .long, time: .standard)
    }
    
    init(storeName: String) {
        self.storeName = storeName
    }
}
