//
//  TaskViewModel.swift
//  ToDoAppSwiftUI
//
//  Created by Dimpy Patel on 11/07/25.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [TaskModel] = []
    @Published var newTaskTitle: String = ""
    
    //add task
    func addTask() {
        guard !newTaskTitle.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        let task = TaskModel(title: newTaskTitle)
        tasks.append(task)
        newTaskTitle = ""
    }
    
    //delete task
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

