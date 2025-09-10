//
//  HeaderView.swift
//  GithubPractice4
//
//  Created by Alexander Mitura on 9/8/25.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var tasks : [Task]
    @State var currentTask: String = ""
    var body: some View {
        HStack{
            TextField("Enter a Task", text: $currentTask)
            Button("New Task") {
                tasks.append(Task(nameOfTask: currentTask, completed: false))
                
            }
        }
    }
    
}
