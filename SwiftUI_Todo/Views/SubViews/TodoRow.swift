//
//  TodoRow.swift
//  SwiftUI_Todo
//
//  Created by Jeremy Fleshman on 10/21/19.
//  Copyright © 2019 Jeremy Fleshman. All rights reserved.
//

import SwiftUI

struct TodoRow: View {
    @Binding var todoItem: TodoItem

    var body: some View {
        HStack {
            TextField("", text: $todoItem.name)
                .foregroundColor(setTextColor())
            Spacer()
            // todo: isolate the touch action to only the checkmark area
            Button(action: {
                self.toggleCheckmark()
            }, label: {
                checkmarkImage()
                    .foregroundColor(.accentColor)
            })
        }
        .buttonStyle(PlainButtonStyle())
    }

    // ?? - should this be mutating?
    // should be a state property
    func toggleCheckmark() {
        todoItem.isChecked = !todoItem.isChecked
    }

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
        TodoRow(todoItem: .constant(TodoItem(name: "Eat lunch", isChecked: true)))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
