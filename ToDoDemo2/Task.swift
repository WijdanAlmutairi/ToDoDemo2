//
//  Task.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import Foundation
import SwiftData

@Model
class Task {
    var title: String
    var completed: Bool
    
    init(title: String, completed: Bool) {
        self.title = title
        self.completed = completed
    }
}
