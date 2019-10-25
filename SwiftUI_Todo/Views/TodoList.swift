//
//  TodoList.swift
//  SwiftUI_Todo
//
//  Created by Jeremy Fleshman on 10/21/19.
//  Copyright © 2019 Jeremy Fleshman. All rights reserved.
//

import SwiftUI

// todo: replace with environment object
    // what to use for persistent storage?
        // CoreData?
        // ben's API?
            // https://github.com/BenjaminEarley/core-todo-api

struct TodoList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            /// todo: add a toggle for showing completed items
            /// todo: implement list filter to only display unchecked item
            List {
                ForEach(userData.todoItems) { item in
                    TodoRow(todoItem: item)
                }
            .onDelete(perform: deleteItem)
            }
            .navigationBarTitle(Text("Todo"))
            .navigationBarItems(trailing:
                Button(action: {
                    self.addItem()
                }, label: {
                    Text("Add item")
                    Image(systemName: "plus")
                }).foregroundColor(.accentColor)
            )
        }
    }

    func addItem() {
        userData.todoItems.append(TodoItem(name: "foop", isChecked: false))
    }

    func deleteItem(at offsets: IndexSet) {
        userData.todoItems.remove(atOffsets: offsets)
    }
}

//struct AddItem: View {
//    @State var todoItems: [TodoItem]
//
//    var body: some View {
//
//    Button(action: {
//        self.todoItems.append(TodoItem(name: "foop", isChecked: false))
//    }, label: {
//        Text("Add item")
//            .foregroundColor(.accentColor)
//        Image(systemName: "plus")
//            .foregroundColor(.accentColor)
//    })
//    }
//}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
        .environmentObject(UserData())
    }
}
