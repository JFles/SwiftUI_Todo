//
//  TodoRow.swift
//  SwiftUI_Todo
//
//  Created by Jeremy Fleshman on 10/21/19.
//  Copyright © 2019 Jeremy Fleshman. All rights reserved.
//

import SwiftUI

struct TodoRow: View {
//    var name: String
    var todoItem: TodoItem

    var body: some View {
        HStack {
            // todo: replace this with a textfield
                // to keep the item in sync, should this be replaced with an environment object that has a bound property?
            Text(todoItem.name)
                .foregroundColor(setTextColor())
            Spacer()
            // todo: replace this with a button
            checkmarkImage()
                .foregroundColor(.accentColor)
        }
        .padding(.horizontal, 16.0)
    }

    // todo: implement toggle
    func checkmarkImage() -> Image {
        return todoItem.isChecked
            ? Image(systemName: "checkmark.square.fill")
            : Image(systemName: "square")
    }

    func setTextColor() -> Color {
        return todoItem.isChecked ? .gray : .black
    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        TodoRow(todoItem:
            TodoItem(
                name: "Eat lunch",
                isChecked: true
            )
        )
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
