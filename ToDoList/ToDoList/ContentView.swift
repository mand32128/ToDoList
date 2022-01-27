//
//  ContentView.swift
//  ToDoList
//
//  Created by Koji Mandokoro on 2022/01/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var toDoData = ToDoData()
    @State var showAdd = false
    
    var body: some View {
        VStack {
            
            TasksView(toDoList: $toDoData.toDoList)
            
            Spacer()
            
            HStack {
                
                Button(action: {
                    // 完了済みのタスクを全削除
                    toDoData.deleteCompletedToDo()
                }) {
                    Text("Delete")
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .background(Color.red)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                }
                
                Button(action: {
                    // ボタン押下でAddToDoViewを表示
                    showAdd.toggle()
                }) {
                    Text("Add")
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .background(Color.blue)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                }
                .sheet(isPresented: $showAdd, content: {
                    AddToDoView(toDoData: toDoData)
                })
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
