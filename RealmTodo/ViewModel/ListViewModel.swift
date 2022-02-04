//
//  ListViewModel.swift
//  RealmTodo
//
//  Created by 佐藤航輔 on 2022/02/04.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var isShowAddView = false

    static let shared = ListViewModel() // シングルトンとする
}
