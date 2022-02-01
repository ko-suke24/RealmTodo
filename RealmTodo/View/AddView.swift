//
//  AddView.swift
//  RealmTodo
//
//  Created by 佐藤航輔 on 2022/02/01.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("タイトル")) {
                    TextField("", text: .constant("タイトル"))
                }
                Section(header: Text("デスクリプション")) {
                    TextField("", text: .constant("デスクリプション"))
                }
            }
            .navigationTitle("Todoを追加")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {print("完了")}) {
                        Text("完了")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {print("キャンセル")}) {
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
