//
//  UserData.swift
//  SwiftUI_Todo
//
//  Created by Jeremy Fleshman on 10/25/19.
//  Copyright © 2019 Jeremy Fleshman. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var todoItems = [
        TodoItem(name: "Read chapter 5", isChecked: false),
        TodoItem(name: "Eat lunch", isChecked: true),
        TodoItem(name: "Be a better human", isChecked: false)
    ]
}
