//
//  ContentView.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        @StateObject var viewModel = MainViewViewModel()
            LoginView()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
