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
var todoItems: [TodoItem] = [
    TodoItem(name: "Read chapter 5", isChecked: false),
    TodoItem(name: "Eat lunch", isChecked: true),
    TodoItem(name: "Be a better human", isChecked: false)
]

struct TodoList: View {
    var body: some View {
        NavigationView {
            List(todoItems, id: \.id) { item in
                TodoRow(todoItem: item)
            }
            .navigationBarTitle(Text("Todo"))
        .navigationBarItems(trailing: AddItem())
        }
    }
}

// ?? is this the right way to add a navigation button??
struct AddItem: View {
    var body: some View {
        // todo: replace this with a button
        HStack {
            Text("Add item")
                .foregroundColor(.accentColor)
            Image(systemName: "plus")
                .foregroundColor(.accentColor)
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
