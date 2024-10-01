//
//  TaskRowView.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI

struct TaskRowView: View {
    
    var completed: Bool = false
    
    var body: some View {
        HStack {
            Image(systemName: completed ? "checkmark.circle" : "circle" )
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Do homework")
        }
    }
}

#Preview {
    TaskRowView()
}
