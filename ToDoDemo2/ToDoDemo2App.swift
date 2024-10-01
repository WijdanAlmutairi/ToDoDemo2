//
//  ToDoDemo2App.swift
//  ToDoDemo2
//
//  Created by Wijdan Almutairi on 01/10/2024.
//

import SwiftUI
import SwiftData

@main
struct ToDoDemo2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for:[Task.self])
        }
    }
}
