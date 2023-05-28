//
//  ToDoList2App.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoList2App: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
