//
//  ContentView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment (\.modelContext) var context
    
    @State private var isShowingTaskSheet = false
    @Query (sort: \Task.title) private var tasks: [Task]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    TaskRowView(task: task)
                }
                
            }
            .padding()
            
            .navigationTitle("Tasks")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $isShowingTaskSheet) {
                AddTaskView()
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("", systemImage: "plus") {
                        //  show Add View
                        isShowingTaskSheet = true
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
