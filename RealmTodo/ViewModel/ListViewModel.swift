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
    @Published var title = ""
    @Published var desc = ""

     init () {
         fetchTodos()
     }

     func fetchTodos() {
         self.todos = Todo.fetchAllTodo()!
     }
    
    func addTodo() {
         Todo.addTodo(title: title, desc: desc)
         self.title = ""
         self.desc = ""
         fetchTodos()
     }

    static let shared = ListViewModel()
}
