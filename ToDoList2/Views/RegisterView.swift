//
//  RegisterView.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import SwiftUI

struct RegisterView: View {
@StateObject var viewModel = RegisterViewViewModel()

    var body: some View {
        HeaderView(
            title: "Register",
            subtitle: "Idk man",
            angle: -5, color: .purple)
        
        Form{
            TextField("Full Name",
                      text: $viewModel.name)
            
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("E-Mail",
                      text: $viewModel.mail)
            
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
            
            SecureField("Password",
                        text: $viewModel.password)
            
                .textFieldStyle(DefaultTextFieldStyle())
            FormButtonView(color: .purple){
                
            }
        }
        
        Spacer()
    }
}

struct RegisterView_Previews: PreviewProvider {
    
   
    static var previews: some View {
        RegisterView()
       
    }
}

