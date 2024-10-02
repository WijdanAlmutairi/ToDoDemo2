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
    
    @State private var isShowingAddTaskSheet = false
    @State private var isShowingEditTaskSheet = false
    @Query (sort: \Task.title) private var tasks: [Task]
    
    @State private var taskToEdit: Task?
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    TaskRowView(task: task)
                        .gesture(
                            TapGesture(count: 2).onEnded {
                                // Edit data
                                taskToEdit = task
                                isShowingEditTaskSheet = true
                            }.exclusively(before: TapGesture(count: 1).onEnded {
                                // change complete value
                                task.completed.toggle()
                            })
                        )
                }
                
            }
            .listStyle(.plain)
            .padding()
            
            .navigationTitle("Tasks")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $isShowingAddTaskSheet) {
                AddTaskView()
            }
            .sheet(item: $taskToEdit) { task in
                if !tasks.isEmpty {
                    EditTaskView( task: task)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("", systemImage: "plus") {
                        //  show Add View
                        isShowingAddTaskSheet = true
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
