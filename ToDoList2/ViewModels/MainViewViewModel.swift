//
//  MainViewViewModel.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//
import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject{
    @Published var currentUserId: String = ""
    
    init(){
        let handler = Auth.auth().addStateDidChangeListener{_, user in
            self.currentUserId user?.uid ?? ""
            
        }
    }
    
    public var isSignedIn: Bool{
        return Auth.auth().currentUser != nil
    }
}
