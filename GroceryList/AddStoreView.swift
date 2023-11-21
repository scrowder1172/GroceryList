//
//  AddStoreView.swift
//  GroceryList
//
//  Created by SCOTT CROWDER on 11/21/23.
//

import SwiftUI
import SwiftData

struct AddStoreView: View {
    
    @State private var storeName: String = ""
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("store", text: $storeName)
            }
            .navigationTitle("Add Store")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Save") {
                    let newStore: Stores = Stores(storeName: storeName)
                    modelContext.insert(newStore)
                    dismiss()
                }
            }
        }
    }
    
    func validateForm() -> Bool {
        guard storeName.isNotEmpty else { return false }
        
        return true
    }
}

#Preview {
    AddStoreView()
}
