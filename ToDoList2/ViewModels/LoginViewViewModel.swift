//
//  LoginViewViewModel.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import Foundation
class LoginViewViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {}
    
    func Login(){
        guard !email.trimmingCharacters(
            in: .whitespaces).isEmpty ,
              !password.trimmingCharacters(
                in: .whitespaces).isEmpty
                
        else{
           errorMessage = "Error, fill in all fields"
            return
        }
        
        guard email.contains("@") &&
                email.contains(".")
        
        else{
        errorMessage = "Is this realy your email?!"
            return
        }
        
        print("omgwtf")
    }
    
    func validate(){
        
    }
}
