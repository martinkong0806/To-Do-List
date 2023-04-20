//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Kong Martin on 19/04/2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
