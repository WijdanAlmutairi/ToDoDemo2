//
//  ContentView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                TaskRowView(completed: false)
            }
            .padding()
            
            .navigationTitle("Tasks")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("", systemImage: "plus") {
                        //  show Add View
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
