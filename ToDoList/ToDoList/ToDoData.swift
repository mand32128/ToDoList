//
//  ToDoData.swift
//  ToDoList
//
//  Created by Koji Mandokoro on 2022/01/20.
//

import Foundation
import UIKit

// 各ToDoの構造体
struct ToDo: Identifiable {
    let id = UUID()
    let body: String = ""
    var isCompleted: Bool = false
}

// @Published var ToDoList: [ToDo] = []
