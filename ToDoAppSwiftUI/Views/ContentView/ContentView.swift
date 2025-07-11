//
//  ContentView.swift
//  ToDoAppSwiftUI
//
//  Created by Dimpy Patel on 11/07/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TaskViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New Task", text: $viewModel.newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: viewModel.addTask) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                    }
                    .padding(.trailing)
                }
                
                List {
                    ForEach(viewModel.tasks) { task in
                        Text(task.title)
                    }
                    .onDelete(perform: viewModel.deleteTask)
                }
            }
            .navigationTitle("To-Do List")
        }
    }
}


#Preview {
    ContentView()
}
