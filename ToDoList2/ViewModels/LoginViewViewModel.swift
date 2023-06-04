//
//  LoginViewViewModel.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import Foundation
import Firebase

class LoginViewViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func Login(){
        guard validate() else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
      
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(
            in: .whitespaces).isEmpty ,
              !password.trimmingCharacters(
                in: .whitespaces).isEmpty
                
        else{
           errorMessage = "Error, fill in all fields"
            return false
        }
        
        guard email.contains("@") &&
                email.contains(".")
        
        else{
        errorMessage = "Is this realy your email?!"
            return false
        }
        return true
    }
}
