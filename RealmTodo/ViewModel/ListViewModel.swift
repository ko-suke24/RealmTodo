//
//  ListViewModel.swift
//  RealmTodo
//
//  Created by 佐藤航輔 on 2022/02/04.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var isShowAddView = false
    @Published var todos: [Todo] = []

     init () {
         fetchTodos()
     }

     func fetchTodos() {
         self.todos = Todo.fetchAllTodo()!
     }

    static let shared = ListViewModel()
}
