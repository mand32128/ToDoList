//
//  TasksView.swift
//  ToDoList
//
//  Created by Koji Mandokoro on 2022/01/27.
//

import SwiftUI

// 個別タスクのView
struct MyCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Spacer()
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .padding()
        }
        .onTapGesture { configuration.isOn.toggle() }
        .overlay(
          RoundedRectangle(cornerRadius: 10)
          .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct TasksView: View {
    
    @Binding var toDoList: [ToDo] // ContentViewとToDoを共有
    // チェック有無がタスクごとに管理できてない
    // @State private var isCompleted = true

    var body: some View {
//        List(toDoData.toDoList) { toDo in
//            Toggle(toDo.body, isOn: toDo.isCompleted)
//                .toggleStyle(MyCheckboxToggleStyle())
//        }
        
        ForEach(toDoList) { toDo in
            Toggle(toDo.body, isOn: toDo.isCompleted)
                .toggleStyle(MyCheckboxToggleStyle())
        }
    }
}

//struct TasksView_Previews: PreviewProvider {
//    static var previews: some View {
//        TasksView()
//    }
//}
