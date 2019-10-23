//
//  TodoList.swift
//  SwiftUI_Todo
//
//  Created by Jeremy Fleshman on 10/21/19.
//  Copyright © 2019 Jeremy Fleshman. All rights reserved.
//

import SwiftUI

struct TodoList: View {
    // todo: replace with environment object
        // what to use for persistent storage?
            // CoreData?
            // ben's API?
                // https://github.com/BenjaminEarley/core-todo-api
    @State private var todoItems: [TodoItem] = [
        TodoItem(name: "Read chapter 5", isChecked: false),
        TodoItem(name: "Eat lunch", isChecked: true),
        TodoItem(name: "Be a better human", isChecked: false)
    ]

    var body: some View {
        NavigationView {
            // todo: replace this enumeration after the code has been
            // moved into an environment object
            List(todoItems.indices) { idx in
                TodoRow(todoItem: self.$todoItems[idx])
            }
            .navigationBarTitle(Text("Todo"))
            .navigationBarItems(trailing:
                Button(action: {
                    // todo: figure out how to add a todo entry
                    self.todoItems.append(TodoItem(name: "foop", isChecked: false))
                }, label: {
                    Text("Add item")
                        .foregroundColor(.accentColor)
                    Image(systemName: "plus")
                        .foregroundColor(.accentColor)
                })
            )


            //AddItem(todoItems: todoItems))
        }
    }
}

// ?? is this the right way to add a navigation button?
//struct AddItem: View {
//    @State var todoItems: [TodoItem]
//
//    var body: some View {
//
//    Button(action: {
//        // todo: implement adding an item
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
    }
}
