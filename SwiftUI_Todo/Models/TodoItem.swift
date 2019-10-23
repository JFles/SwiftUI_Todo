//
//  TodoItem.swift
//  SwiftUI_Todo
//
//  Created by Jeremy Fleshman on 10/22/19.
//  Copyright © 2019 Jeremy Fleshman. All rights reserved.
//

import Foundation

struct TodoItem: Identifiable {
    var id = UUID()
    var name: String
    var isChecked: Bool
}
