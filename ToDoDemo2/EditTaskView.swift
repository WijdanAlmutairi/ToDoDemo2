//
//  EditTaskView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 02/10/2024.
//

import SwiftUI
import SwiftData

struct EditTaskView: View {
    @Environment (\.modelContext) var context
    @Environment (\.dismiss) private var dismiss
    
    @Bindable var task: Task
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Add Task", text: $task.title)
                    .textFieldStyle(.roundedBorder)
                Spacer()
            }
            .padding()
            
            .navigationTitle("Edit Task")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

//#Preview {
//    EditTaskView(task: Task(title: "Do homework", completed: false))
//}
