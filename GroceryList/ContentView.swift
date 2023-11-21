//
//  ContentView.swift
//  GroceryList
//
//  Created by SCOTT CROWDER on 11/21/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Query(
        sort: [
            SortDescriptor(\Stores.storeName)
        ]
    ) var allStores: [Stores]
    
    @State private var showingAddStores: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(allStores) {store in
                    NavigationLink(value: store) {
                        Text(store.storeName)
                    }
                }
                .onDelete(perform: allStoresDelete)
            }
            .navigationTitle("Grocery Stores")
            .navigationDestination(for: Stores.self) {store in
                // add later
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Store", systemImage: "plus") {
                        showingAddStores = true
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
            .sheet(isPresented: $showingAddStores) {
                AddStoreView()
            }
        }
    }
    
    func allStoresDelete(at offsets: IndexSet) {
        for offset in offsets {
            let store = allStores[offset]
            modelContext.delete(store)
        }
    }
}

#Preview {
    ContentView()
}
