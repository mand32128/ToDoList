//
//  ContentView.swift
//  ToDoList
//
//  Created by Koji Mandokoro on 2022/01/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var toDoData = ToDoData()
    
    var body: some View {
        VStack {
            
            // ToDoをリスト表示
            
            Spacer()
            
            HStack {
                Button("Delete") {
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.all)
                .background(Color.red)
                .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                
                Button("Add") {
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.all)
                .background(Color.blue)
                .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
