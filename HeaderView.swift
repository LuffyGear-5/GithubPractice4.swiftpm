//
//  HeaderView.swift
//  GithubPractice4
//
//  Created by Alexander Mitura on 9/8/25.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var tasks : [Task]
    @State var newTask: String = ""
    @State var completed: Bool = false
    var body: some View {
        HStack{
            Group{
                TextField("Enter a Task", text: $newTask)
                Toggle(isOn: $completed) {
                    Text("Is it completed?")
                }
            }
            .frame(maxWidth: 200)
            Button("New Task") {
                tasks.append(Task(nameOfTask: newTask, completed: completed))
                
            }
        }
    }
    
}
