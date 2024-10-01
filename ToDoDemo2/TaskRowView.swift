//
//  TaskRowView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI

struct TaskRowView: View {
    var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle" : "circle" )
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(task.title)
        }
    }
}

#Preview {
    TaskRowView(task: Task(title: "Do homework", completed: false))
}
