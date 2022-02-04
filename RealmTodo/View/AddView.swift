//
//  AddView.swift
//  RealmTodo
//
//  Created by 佐藤航輔 on 2022/02/01.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentasion
    @ObservedObject var viewModel = ListViewModel.shared
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("タイトル")) {
                    TextField("", text: $viewModel.title)
                }
                Section(header: Text("デスクリプション")) {
                    TextField("", text: $viewModel.desc)
                }
            }
            .navigationTitle("Todoを追加")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                           viewModel.addTodo()
                           viewModel.isShowAddView.toggle()
                           }) {
                        Text("完了")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        presentasion.wrappedValue.dismiss()
                    }) {
                        Text("キャンセル")
                    }
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
