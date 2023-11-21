//
//  ContentView.swift
//  GroceryList
//
//  Created by SCOTT CROWDER on 11/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Store 1")
                Text("Store 2")
                Text("Store 3")
            }
            .navigationTitle("Grocery Stores")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Store", systemImage: "plus") {
                        // add code later
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
