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
    let body: String
    var isCompleted: Bool = false
    
    init(body: String) {
        self.body = body
    }
}

// ToDo管理クラス
class ToDoData: ObservableObject {
    @Published var toDoList: [ToDo] = []
    
    // ToDOを追加、削除する関数を用意
    func addToDo(body: String) {
        let toDo = ToDo(body: body)
        self.toDoList.append(toDo)
    }
    
    func deleteToDo(id: UUID) {
        for (index, toDo) in self.toDoList.enumerated() {
            if toDo.id == id {
                toDoList.remove(at: index)
            }
        }
    }
}
