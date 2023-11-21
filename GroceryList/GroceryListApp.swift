//
//  GroceryListApp.swift
//  GroceryList
//
//  Created by SCOTT CROWDER on 11/21/23.
//

import SwiftUI
import SwiftData

@main
struct GroceryListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Stores.self])
    }
}
