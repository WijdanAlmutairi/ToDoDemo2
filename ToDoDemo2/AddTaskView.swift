//
//  AddTaskView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI

struct AddTaskView: View {
    @State var title: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Add Task", text: $title)
                    .textFieldStyle(.roundedBorder)
                HStack {
                    Button("Add") {
                        // save data
                    }.padding()
                    
                    Button("Cancel") {
                        // save data
                    }.padding()
                }
                Spacer()
            }
            .padding()
            
            .navigationTitle("Tasks")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    AddTaskView()
}
