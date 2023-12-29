//
//  ToDoListDeneme2App.swift
//  ToDoListDeneme2
//
//  Created by Yunus Can on 28/12/2023.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
