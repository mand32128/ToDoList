//
//  AddToDoView.swift
//  ToDoList
//
//  Created by Koji Mandokoro on 2022/01/26.
//

import SwiftUI

struct AddToDoView: View {
    
    @ObservedObject var toDoData: ToDoData // ContentViewとToDoを共有
    @State var inputText = "" // 入力された文字列を一時的に保持する状態変数
    @Environment(\.dismiss) var dismiss // 画面を閉じる用のdismissハンドラ
    @FocusState private var textEditorIsForcused: Bool // フォーカス状態プロパティ

    var body: some View {
        VStack {
            
            TextEditor(text: $inputText)
                .focused($textEditorIsForcused)
                .padding(.all)
                .overlay(
                  RoundedRectangle(cornerRadius: 10)
                  .stroke(Color.black, lineWidth: 4)
                )
            
            HStack {
                
                Button(action: {
                    dismiss()
                }) {
                    Text("Back")
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .background(Color.orange)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                }
                
                Button(action: {
                    toDoData.addToDo(body: inputText)
                    dismiss()
                }) {
                    Text("Add")
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .background(Color.blue)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
        .onAppear{
            /// 0.5秒の遅延発生後TextEditorに初期フォーカスをあてる
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                textEditorIsForcused = true
            }
        }
    }
}

//struct AddToDoView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddToDoView(toDoData)
//    }
//}
