//
//  AddTaskView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI
import SwiftData

struct AddTaskView: View {
    @Environment (\.modelContext) var context
    @Environment (\.dismiss) private var dismiss
    
    
    @State var title: String = ""
    @State var completed: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Add Task", text: $title)
                    .textFieldStyle(.roundedBorder)
                HStack (spacing: 10) {
                    Button("Add") {
                        // save data
                        let task = Task(title: title, completed: completed)
                        context.insert(task)
                        dismiss()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Cancel") {
                        // dismiss sheet
                        dismiss()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                Spacer()
            }
            .padding()
            
            .navigationTitle("Add Task")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    AddTaskView()
}
