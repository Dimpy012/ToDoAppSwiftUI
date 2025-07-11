//
//  TaskModel.swift
//  ToDoAppSwiftUI
//
//  Created by Dimpy Patel on 11/07/25.
//

import Foundation

// MARK: - Task
struct TaskModel: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
