//
//  ListView.swift
//  RealmTodo
//
//  Created by 佐藤航輔 on 2022/02/01.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Image(systemName: "circlebadge.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.blue)
                    VStack {
                        Text("タイトル")
                            .font(.title3)
                        Text("デスクリプション")
                            .font(.caption2)
                    }
                }
                .swipeActions(edge: .trailing) {
                    Button {
                        print("delete todo")
                    } label: {
                        Image(systemName: "trash")
                    }
                    .tint(.red)
                }
                .swipeActions(edge: .leading) {
                        Button {
                            print("show edit view")
                        } label: {
                            Image(systemName: "pencil.circle")
                        }
                        .tint(.green)
                }
            }
            .navigationTitle("RealmTodo")
        }
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
