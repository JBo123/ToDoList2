//
//  RegisterViewViewModel.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class RegisterViewViewModel: ObservableObject{
    @Published var name = ""
    @Published var mail = ""
    @Published var password = ""
    
    init(){}

    func register( ){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: mail,
                               password: password) {[weak self] result, error in
            guard let userId = result?.user.uid
            
            else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String){
        let newUser = User(id: id,
                           name: name,
                           email: mail,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users").document(id).setData(newUser.asDictionary())
    }
    
    func validate() -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !mail.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard mail.contains("@") &&
              mail.contains(".")
        
        else{
        return false
        }
        
        guard password.count >= 6
        else{
            return false
        }
        return true
    }
}
